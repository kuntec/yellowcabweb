class APIResources {
  // static const String BASE_URL =
  //     "http://192.168.31.194:8888/boilerplate-livewire/api/";

  static const String BASE_URL = "https://yellowcabindia.com/api/";
//   static final String IMAGE_URL =
//       "https://playerindia.in/player-admin/storage/app/";
//   static final String AVATAR_IMAGE =
//       "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png";
//

  static const String ADD_USER = BASE_URL + "addUser";

  static const String GET_CITIES = BASE_URL + "getCities";
  static const String GET_PICKUP = BASE_URL + "getPickup";
  static const String GET_DROP = BASE_URL + "getDrop";
  static const String GET_ROUTE = BASE_URL + "getRoute";

  static const String GET_ONEWAY = BASE_URL + "getOneway";

  static const String ADD_BOOKING = BASE_URL + "addBooking";

  static const String CANCEL_BOOKING = BASE_URL + "cancelBooking";

  static const String MY_BOOKINGS = BASE_URL + "myBookings";

  static const String ADD_ROUNDTRIP = BASE_URL + "addRoundTrip";

  static const String GET_CARFARE = BASE_URL + "getCarFare";

  static const String GET_CAR_TYPE = BASE_URL + "getCarTypes";

  static const String GET_LOCAL_PACKAGE = BASE_URL + "getLocalPackage";

  static const String SEND_OTP =
      "https://api.authkey.io/request?authkey=9834d7cd1d3b4d17&mobile=9409394242&country_code=91&sid=1276&otp=7588&company=NIKAHJODI.com&time=5%20Min";

//   static final String GET_PLAYER = BASE_URL + "getPlayer";
//   static final String GET_PLAYER_BY_ID = BASE_URL + "getPlayerById";
//   static final String ADD_PLAYER = BASE_URL + "addPlayer";
//   static final String CHECK_PLAYER = BASE_URL + "checkPlayer";
//   static final String UPDATE_PLAYER = BASE_URL + "updatePlayer";
//   static final String UPDATE_PLAYER_FIREBASE =
//       BASE_URL + "updatePlayerFirebase";
//
//   static final String ADD_PLAYER_SPORT = BASE_URL + "addPlayerSport";
//
//   static final String UPDATE_PLAYER_IMAGE = BASE_URL + "updatePlayerImage";
//
//   static final String GET_HOST_ACTIVITY = BASE_URL + "getHostActivity";
//   static final String GET_MY_HOST_ACTIVITY = BASE_URL + "getMyHostActivity";
//   static final String ADD_HOST_ACTIVITY = BASE_URL + "addHostActivity";
//   static final String UPDATE_HOST_ACTIVITY = BASE_URL + "updateHostActivity";
//
//   static final String DELETE_HOST_ACTIVITY = BASE_URL + "deleteHostActivity";
//   static final String DELETE_TOURNAMENT = BASE_URL + "deleteTournament";
//   static final String DELETE_EVENT = BASE_URL + "deleteEvent";
//
//   static final String GET_LOOKING_FOR = BASE_URL + "getLookingFor";
//   static final String GET_SPORT = BASE_URL + "getSport";
//   static final String GET_PLAYER_SPORT = BASE_URL + "getPlayerSport";
//
//   static final String GET_TOURNAMENT = BASE_URL + "getTournament";
//   static final String ADD_TOURNAMENT = BASE_URL + "addTournament";
//   static final String UPDATE_TOURNAMENT = BASE_URL + "updateTournament";
//   static final String UPDATE_TOURNAMENT_STATUS =
//       BASE_URL + "updateTournamentStatus";
//   static final String UPDATE_TOURNAMENT_IMAGE =
//       BASE_URL + "updateTournamentImage";
//   static final String GET_MY_TOURNAMENT = BASE_URL + "getMyTournament";
//
//   static final String GET_EVENT = BASE_URL + "getEvent";
//   static final String ADD_EVENT = BASE_URL + "addEvent";
//   static final String UPDATE_EVENT = BASE_URL + "updateEvent";
//   static final String UPDATE_EVENT_IMAGE = BASE_URL + "updateEventImage";
//   static final String GET_MY_EVENT = BASE_URL + "getMyEvent";
//
//   static final String GET_SERVICE = BASE_URL + "getService";
//
//   static final String GET_VENUE = BASE_URL + "getVenue";
//   static final String GET_MY_VENUE = BASE_URL + "getMyVenue";
//   static final String ADD_VENUE = BASE_URL + "addVenue";
//   static final String UPDATE_VENUE = BASE_URL + "updateVenue";
//   static final String DELETE_VENUE = BASE_URL + "deleteVenue";
//   static final String UPDATE_VENUE_IMAGE = BASE_URL + "updateVenueImage";
//
//   static final String GET_TIMESLOT = BASE_URL + "getTimeslot";
//   static final String ADD_TIMESLOT = BASE_URL + "addTimeslot";
//   static final String DELETE_TIMESLOT = BASE_URL + "deleteTimeslot";
//
//   static final String GET_VENUE_PHOTO = BASE_URL + "getVenuePhoto";
//   static final String ADD_VENUE_PHOTO = BASE_URL + "addVenuePhoto";
//   static final String DELETE_VENUE_PHOTO = BASE_URL + "deleteVenuePhoto";
//
//   static final String GET_SERVICEDATA_ID = BASE_URL + "getServiceById";
//   static final String GET_PLAYER_SERVICEDATA =
//       BASE_URL + "getServiceByPlayerId";
//   static final String ADD_SERVICEDATA = BASE_URL + "addServiceData";
//   static final String GET_SERVICEDATA = BASE_URL + "getServiceData";
//   static final String DELETE_SERVICEDATA = BASE_URL + "deleteServiceData";
//   static final String UPDATE_SERVICEDATA = BASE_URL + "updateServiceData";
//   static final String UPDATE_SERVICEDATA_POSTER_IMAGE =
//       BASE_URL + "updateServicePosterImage";
//
//   static final String GET_SERVICE_PHOTO = BASE_URL + "getServicePhoto";
//   static final String ADD_SERVICE_PHOTO = BASE_URL + "addServicePhoto";
//   static final String DELETE_SERVICE_PHOTO = BASE_URL + "deleteServicePhoto";
//
//   static final String ADD_DAY_SLOT = BASE_URL + "addDaySlot2";
//   static final String GET_DAY_SLOT = BASE_URL + "getDaySlot";
//   static final String UPDATE_DAY_SLOT = BASE_URL + "updateDaySlot2";
//
//   static final String GET_DAY_TIME_SLOT = BASE_URL + "getDayTimeSlot";
//   static final String UPDATE_DAY_TIME_SLOT = BASE_URL + "updateDayTimeSlot";
//
// //static final String ADD_DAY_TIME_SLOT = BASE_URL + "addDayTimeSlot";
//
//   static final String ADD_PARTICIPANT = BASE_URL + "addParticipant";
//   static final String GET_PARTICIPANT = BASE_URL + "getParticipant";
//   static final String UPDATE_PARTICIPANT = BASE_URL + "updateParticipant";
//   static final String DELETE_PARTICIPANT = BASE_URL + "deleteParticipant";
//
//   //Booking
//   static final String ADD_BOOKING = BASE_URL + "addBooking";
//   static final String ADD_BOOKING_SLOT = BASE_URL + "addBookingSlot";
//   static final String GET_MY_BOOKINGS = BASE_URL + "getMyBookings";
//   static final String GET_OWNER_BOOKINGS = BASE_URL + "getOwnerBookings";
//
//   //Friend
//   static final String ADD_FRIEND = BASE_URL + "addFriend";
//   static final String UPDATE_FRIEND = BASE_URL + "updateFriend";
//   static final String REMOVE_FRIEND = BASE_URL + "removeFriend";
//   static final String LIST_FRIENDS = BASE_URL + "listFriends";
//   static final String GET_CHAT_PLAYER = BASE_URL + "getChatPlayer";
//   static final String GET_FRIEND_REQUEST = BASE_URL + "getFriendRequest";
//
//   //My Participant
//
//   static final String GET_EVENT_PARTICIPANT = BASE_URL + "getEventParticipant";
//   static final String GET_TOURNAMENT_PARTICIPANT =
//       BASE_URL + "getTournamentParticipant";
//
//   //Notification
//   static final String CHAT_NOTIFICATION = BASE_URL + "chatNotification";
//
//   static final String ADD_CONVERSATION = BASE_URL + "addConversation";
//
//   static final String GET_MY_CONVERSATION = BASE_URL + "getMyConversation";
//   static final String UPDATE_CONVERSATION_STATUS =
//       BASE_URL + "updateConversationStatus";
//   //Location
//
//   static final String GET_LOCATION = BASE_URL + "getLocation";
//
//   static final String GET_NOTIFICATION = BASE_URL + "getNotifications";
//
//   static final String GET_UNREAD_NOTIFICATION =
//       BASE_URL + "getUnreadNotifications";
//   static final String UPDATE_UNREAD_NOTIFICATION =
//       BASE_URL + "updateUnreadNotifications";
}
