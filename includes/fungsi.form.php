<?php

function form_text($title='',$name='',$val='',$attr=''){
	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
    $out .= '<input type="text" class="form-control" id="'.$name.'" name="'.$name.'" placeholder="'.$title.'" value="'.$val.'" '.$attr.'>';
    $out .= '</div></div>';	
	return $out;
}

function form_password($title='',$name='',$attr=''){
	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
    $out .= '<input type="password" class="form-control" id="'.$name.'" name="'.$name.'" placeholder="'.$title.'" '.$attr.'>';
    $out .= '</div></div>';	
	return $out;
}

function form_textarea($title='',$name='',$val='',$attr=''){
	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
    $out .= '<textarea class="form-control" id="'.$name.'" name="'.$name.'" placeholder="'.$title.'" '.$attr.'>'.$val.'</textarea>';
    $out .= '</div></div>';
	return $out;	
}

function form_dropdown($title='',$name='',$array='',$val='',$attr=''){
	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
	$out .= '<select name="'.$name.'" '.$attr.'>';
  	if( !empty($array) ){
		foreach((array)$array as $key=>$val){
			$selected = ($key==$val)?' selected="selected"' : "";
			$out .= '<option value="'.$key.'"'.$selected.'>'.$val.'</option>';	
		}
	}
	$out .= '</select>';
    $out .= '</div></div>';	
	return $out;
}

function form_file($title='',$name='',$val='',$attr=''){
	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
    $out .= '<input type="file" name="'.$name.'" class="form-control" id="'.$name.'" value="'.$val.'" '.$attr.'>';
    $out .= '</div></div>';	
	return $out;
}

function form_dropdown_tanggal($title='',$name='',$val='')
{
	$arr_bulan = array(1=>'Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
	

	$out  = '<div class="form-group">';
    $out .= '<label for="'.$name.'" class="col-sm-3 control-label">'.$title.'</label>';
    $out .= '<div class="col-sm-9">';
    $out .= '<select name="'.$name.'_tgl">';
    for($i=1;$i<=31;$i++){
    	$out .= '<option value="'.$i.'">'.$i.'</option>';
	}
	$out .= '</select>';
	$out .= '<select name="'.$name.'_bln">';
	foreach($arr_bulan as $no=>$nm){
    	$out .= '<option value="'.$no.'">'.$nm.'</option>';
	}
	$out .= '</select>';
	$out .= '<select name="'.$name.'_thn">';
	for($j=1980;$j<=date('Y');$j++){
    	$out .= '<option value="'.$j.'">'.$j.'</option>';
	}
    $out .= '</select>';
    $out .= '</div></div>';	
	return $out;
}

function form_button($title='',$name='',$attr='')
{
	$out  = '<div class="form-group">';
	$out .= '<div class="col-sm-offset-3 col-sm-9">';
	$out .= '<button type="submit" class="btn btn-success" name="'.$name.'" '.$attr.'>'.$title.'</button>';
	$out .= '</div>';
	$out .= '</div>';
	return $out;
}