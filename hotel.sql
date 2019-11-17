        CREATE TABLE guests (
        id SERIAL PRIMARY KEY,
        name text,
        city text
        );

        CREATE TABLE room (
        id SERIAL PRIMARY KEY,
        room_number numeric(3),
        floor_level numeric(2)
        );

        CREATE TABLE booking (
                id integer NOT NULL,
                guest_id integer REFERENCES guests (id),
                room_id integer REFERENCES room (id),
                date_booked date,
                room_number integer,
                check_in_date date,
                check_out_date date,
                PRIMARY KEY (id, guest_id, room_id)
                
        );

        

       
                          





