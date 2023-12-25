# Todo's
This Document contains all the things that need to be done and tracks progress on a few of them.

## 1. Users
This will be the first interface regarding logging in and everything else. We need full CRUD support in this module

### 1.1 Model
- Name
- Mail
- Password
- Nickname
- Phone
- Role
  - Admin
  - Band
  - Coordinator
  - Member

## 2. Events
This model will contain all events that will be going on. This will serve as an identifier (GUID?) for all the other info

### 2.1 Model
- Name
- Place
- Organizer

## 3. Riders
This model should unify Band-Riders to one form, so every info will be in the same place. That enables the team to get a lot of info at a glance.

Could be extended with checkboxes for "patched" and a field behind it to enter where it is patched to.

There are three spereate models, one for the Band itself, the 1:1 copy of their patch. Then there is a festival patch, and finally the model to link between the band's rider and the festivalpatch. That way you can assign the channels individually OR decide to use the 1:1 if needed.

### 3.1 Models
#### 3.1.1 Bandrider (Ingest)
- band_id
- Channel Number
- Channel Name
- Mic/Type
- Phantom
- Position

#### 3.1.2 Festivalpatch
- event_id
- Channel Number
- Channel Name

#### 3.1.3 Linkmodel
- ID (Bandrider)
- ID (Festivalpatch)
- Patched (bool)
- {Patched to (different model?}

## 4. Bands
Jsut basic info about a Band, dates, slots...
