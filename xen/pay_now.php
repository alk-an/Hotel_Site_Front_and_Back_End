<?php 

    require('admin/inc/db_config.php');
    require('admin/inc/essentials.php');

    // ta require gia tin trapeza

    date_default_timezone_set("Europe/Athens");

    session_start();

    if(!(isset($_SESSION['login']) || $_SESSION['login']==true)){
        redirect('index.php');
    }

    if(isset($_POST['pay_now'])){


        //kodikas gia to gateway
        $checksum = "";

        $ORDER_ID = 'ORD_'.$_SESSION['uId'].random_int(11111,9999999);
        $CUST_ID = $_SESSION['uId'];
        $INDUSTRY_TYPE_ID = "Retail";
        $CHANNEL_ID = "WEB";
        $TXN_AMOUNT = $_SESSION['room']['payment'];

        // $paramList = array();
        // $paramList['MID'] = "12345abc";
        // $paramList['ORDER_ID'] = $ORDER_ID;
        // $paramList['CUST_ID'] = $CUST_ID;
        // $paramList['INDUSTRY_TYPE_ID'] = $INDUSTRY_TYPE_ID;
        // $paramList['CHANNEL_ID'] = $CHANNEL_ID;
        // $paramList['TXN_AMOUNT'] = $TXN_AMOUNT;
        // $paramList['WEBSITE'] = "WEBSTAGING";
        // $paramList['CALLBACK_URL'] = "abc123";

        // $checksum = "123";
        

        //insert data into db


        $frm_data = filteration($_POST);
        $query1 = "INSERT INTO `booking_order` (`user_id`, `room_id`, `check_in`, `check_out`, `order_id`) VALUES (?,?,?,?,?)";
        insert($query1,[$CUST_ID,$_SESSION['room']['id'],$frm_data['checkin'],$frm_data['checkout'],$ORDER_ID],'iisss');

        $booking_id = mysqli_insert_id($con);
        $query2 = "INSERT INTO `booking_details` (`booking_id`, `room_name`, `price`, `total_pay`, `user_name`, `phonenum`, `address`) VALUES (?,?,?,?,?,?,?)";
        //insert($query2,[$booking_id,$_SESSION['room']['name'],$_SESSION['room']['price'],$TXN_AMOUNT,$frm_data['name'],$frm_data['phonenum'],$frm_data['address']],'isiisss');
        if(insert($query2,[$booking_id,$_SESSION['room']['name'],$_SESSION['room']['price'],$TXN_AMOUNT,$frm_data['name'],$frm_data['phonenum'],$frm_data['address']],'isiisss')){
            
            echo 'success';
            $q = "UPDATE `booking_order` SET `booking_status`=?, `trans_id`=?, `trans_amt`=?,
             `trans_status`=?, `trans_resp_msg`=? WHERE `booking_id`=?";
            $values = ["booked",1,$TXN_AMOUNT,"success","ola good",$booking_id];
            $res = update($q,$values,'siissi');
            //redirect('pay_status.php&order='.$ORDER_ID);
            
        }
        else{
            echo 'fail';
        }
        
        
    


    }



?>