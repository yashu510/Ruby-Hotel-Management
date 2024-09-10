# Ruby-Hotel-Management

Overview
This Ruby Hotel Management system allows users to manage a hotel's check-in and check-out process through an object-oriented approach. The system models four main components:

Hotel: Manages rooms and party check-ins/check-outs.
Room: Each room in the hotel can either be vacant or occupied by a party.
Party: A group of guests who stay in a room together.
Guest: Each individual guest belongs to a party.
Features

bash
Copy code
cd ruby-hotel-management
Run the init.rb file to start the hotel management system.
bash
Copy code
ruby init.rb
Usage
Upon starting the system, an interactive menu will appear, allowing you to perform the following actions.

Interactive Menu Options : 

1. Check-in a party: Enter the names of guests in the party, separated by commas. The system will attempt to assign the party to a vacant room. If no rooms are available, the party will be added to the waiting list.

2. Check-out a room: Enter the number of the room to vacate. The party occupying that room will be moved to the waiting list.

3. Add a room: Adds a new room to the hotel.

4. Remove a room: Enter the number of the room to remove. A room can only be removed if it is vacant.

5. List all rooms: View the current status of all rooms, including which rooms are vacant and which rooms are occupied (and by whom).

6. List unassigned parties: View a list of all parties waiting for a room to become available.

7. Assign party from waiting list: Assign a party from the waiting list to a vacant room by providing the name of a guest in that party.

8. Exit: Exit the system.

