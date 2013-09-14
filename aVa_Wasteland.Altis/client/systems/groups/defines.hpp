// Global defines for standalone server mode. Copied in place by install.bat
//
// This serves as a registry for all the new messages we can broadcast to
// connected clients.
//
// See clientRelayHandler.sqf for more info
//
#define MESSAGE_VEHICLE_PROPERTIES_APPLY 0
#define MESSAGE_BROADCAST_MSG_TO_PLAYER 1
#define MESSAGE_BROADCAST_MSG_TO_SIDE 2
#define MESSAGE_BROADCAST_MSG_TO_ALL 3

// Message Type Definitions
/*
	Defines what kind of message we are sending
*/
#define MESSAGE_BROADCAST_MSG_TYPE_TITLE 11
#define MESSAGE_BROADCAST_MSG_TYPE_GCHAT 12

// Purchased Crate Types
/*
	Defines what kind of crate was purchased
*/
#define PURCHASED_CRATE_TYPE_AMMO 60
#define PURCHASED_CRATE_TYPE_WEAPON 61

// Uncomment this when testing in the standalone server
//#define __DEBUG__

//#define __DISABLE_INIDB__

// Do we skip from night to morning? serverTimeSync.sqf
#define __SERVER_SKIP_NIGHT__ 1

// Easy cash at start 
//#define __SPAWN_WITH_PLENTY_DOLLA__ 1	

// Define this if you want to enable long periods of running to drain your water level
#define __RUNNING_EXHAUSTION__

// FATIGUE SYSTEM DEFINES
#ifdef __RUNNING_EXHAUSTION__
#define FATIGUE_EXHAUSTED -3
#define FATIGUE_TIRED -2
#define FATIGUE_RESTING -1
#endif

// How often we decrement units from peoples food and water
#define HUNGER_DECREMENT_INTERVAL 1800
#define THIRST_DECREMENT_INTERVAL 1200

// Randomize money variables to stop hackers
#define __MONEY_VAR_NAME__ "6789playermoneyvar"
#define __MONEYBAG_VAR_NAME__ "AB3245Fbagmoneyvar"