# Table  Structures

Create table sxsw_staff
(stf_id varchar(5) primary key,
stf_name varchar(25),
stf_street varchar(25),
stf_city varchar(20), 
stf_state varchar(2),
stf_zipcode varchar(5),
stf_phone varchar(10),
stf_salary number(10),
stf_email varchar(25),
stf_title varchar(25),
stf_hiredate date,
stf_dob date,
stf_sup_id varchar(5),
constraint fk_super foreign key (stf_sup_id) references sxsw_staff (stf_id));

create table manager
(mgr_mgrno varchar(4) primary key,
mgr_firstname varchar(12),
mgr_lastname varchar(15),
mgr_midinitial varchar(12),
mgr_address varchar(50),
mgr_phone varchar(20));

create table business_sponsor
(bus_id varchar(5) primary key,
bus_name varchar(50),
bus_address varchar(60),
bus_phone char(10)); 

create table band
(bnd_id varchar(5) primary key,
bnd_name varchar(50),
bnd_street varchar(25),
bnd_city varchar(20), 
bnd_state varchar(20),
bnd_zipcode varchar(10),
bnd_phone char(20),
bnd_type varchar(5),
bnd_fee number,
bnd_mgno varchar(4),
constraint fk_BAMGR foreign key (bnd_mgno) references manager (mgr_mgrno));

create table venue
(ven_id varchar(5) primary key,
 ven_name varchar(50) ,
 ven_address varchar(50) ,
 ven_capacity varchar(50),
 ven_age_policy varchar(20));

create table event
(evt_no varchar(5) primary key,
 evt_budget decimal,
 evt_bnd_id varchar(5),
 evt_venue_id varchar(5),
 Evt_date_time DATE,
 evt_duration number,
 evt_bus_id varchar(5),
constraint fk_band foreign key (evt_bnd_id) references band(bnd_id),
constraint fk_venue foreign key ( evt_venue_id) references venue(ven_id),
constraint fk_sponsor foreign key (	) references business_sponsor (bus_id));

create table work_schedule
(ws_evt_no varchar(5),
 ws_stf_id varchar(5),
 ws_start_time date,
 ws_end_time date,
 ws_role varchar(25),
constraint pk_ws primary key (ws_evt_no, ws_stf_id),
constraint fk_sxsw_staff foreign key (ws_stf_id) references sxsw_staff(stf_id),
constraint fk_event foreign key ( ws_evt_no ) references event(evt_no));
 
create table Vendor(
ven_no varchar(5) primary key,
ven_name varchar(25),
ven_street varchar(25),
ven_city varchar(20), 
ven_state varchar(2),
ven_zipcode varchar(5),
ven_pnone varchar(10),
ven_fax varchar(10));
 
create table orders(
ord_no varchar(5) primary key,
ord_item varchar(25),
ord_amount number,
ord_unitprice decimal,
ord_delivery_time date,
ord_evt_no varchar(5),
ord_ven_no varchar(5),
constraint fk_event2 foreign key ( ord_evt_no ) references event(evt_no),
constraint fk_vendor foreign key ( ord_ven_no ) references vendor(ven_no));
