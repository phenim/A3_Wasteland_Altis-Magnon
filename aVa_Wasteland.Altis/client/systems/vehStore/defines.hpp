// Global defines for standalone server mode. Copied in place by install.bat

// SHADOW'S NEW MESSAGING SYSTEM//////////////////////////////////////////////
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
