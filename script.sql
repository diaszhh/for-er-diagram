create table public.categories
(
	id bigserial
		primary key,
	category_name varchar(255)
);

create table public.cities
(
	id bigserial
		primary key,
	city_name varchar(255)
);

create table public.places
(
	id bigserial
		primary key,
	description varchar(255),
	location varchar(255),
	place_name varchar(255),
	category_id bigint
		constraint fkca17w9kt9f18v0lr91ssmivx5
			references public.categories,
	city_id bigint
		constraint fkn1di3fddbxax9y45on6hj2gue
			references public.cities
);

create table public.roles
(
	id bigserial
		primary key,
	role_name varchar(255)
);

create table public.users
(
	id bigserial
		primary key,
	email varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	password varchar(255),
	username varchar(255)
);

create table public.customers
(
	id bigserial
		primary key,
	individual_entrepreneur_number varchar(255),
	phone_number varchar(255),
	user_id bigint
		constraint fkrh1g1a20omjmn6kurd35o3eit
			references public.users
);

create table public.events
(
	id bigserial
		primary key,
	date_time timestamp(6),
	description varchar(255),
	event_name varchar(255),
	category_id bigint
		constraint fko6mla8j1p5bokt4dxrlmgwc28
			references public.categories,
	customer_id bigint
		constraint fkii5rb5kwirlh7h032gijcixiy
			references public.customers,
	place_id bigint
		constraint fk4ox8m7slwnedk0mwei26co7xv
			references public.places,
	user_id bigint
		constraint fkat8p3s7yjcp57lny4udqvqncq
			references public.users
);

create table public.feedbacks
(
	id bigserial
		primary key,
	comment varchar(255),
	rating integer not null,
	event_id bigint
		constraint fkfr1mdb1ux17qw5k0xobnckww0
			references public.events,
	user_id bigint
		constraint fk312drfl5lquu37mu4trk8jkwx
			references public.users
);

create table public.users_roles
(
	user_id bigint not null
		constraint fk2o0jvgh89lemvvo17cbqvdxaa
			references public.users,
	roles_id bigint not null
		constraint fka62j07k5mhgifpp955h37ponj
			references public.roles
);

create table public.visits
(
	id bigserial
		primary key,
	end_time timestamp(6),
	start_time timestamp(6),
	event_id bigint
		constraint fknf3m5dolbs65nt61cvh17dgmk
			references public.events,
	user_id bigint
		constraint fk5kmnbgokfpcalwrminoedrb68
			references public.users
);


