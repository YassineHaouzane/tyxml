val rng : Cryptokit.Random.rng
val make_new_cookie_value : unit -> string
val get_cookie_info :
  float ->
  Eliom_common.sitedata ->
  Eliom_common.SessionCookies.key Http_frame.Cookievalues.t ->
  Eliom_common.SessionCookies.key Http_frame.Cookievalues.t ->
  string Http_frame.Cookievalues.t ->
  Eliom_common.tables Eliom_common.cookie_info *
  Http_frame.Cookievalues.key list
val new_service_cookie_table :
  unit -> Eliom_common.tables Eliom_common.servicecookiestable
val new_data_cookie_table : unit -> Eliom_common.datacookiestable
val compute_session_cookies_to_send :
  Eliom_common.sitedata ->
  (string option *
   'a Eliom_common.one_service_cookie_info Eliom_common.session_cookie ref)
  Http_frame.Cookievalues.t ref *
  (string option *
   Eliom_common.one_data_cookie_info Eliom_common.session_cookie ref)
  Lazy.t Http_frame.Cookievalues.t ref *
  ((string * 'b * 'c * 'd) option *
   Eliom_common.one_persistent_cookie_info Eliom_common.session_cookie ref)
  Lwt.t Lazy.t Http_frame.Cookievalues.t ref ->
  Http_frame.cookieset -> Http_frame.cookieset Lwt.t
val compute_cookies_to_send :
  Eliom_common.sitedata ->
  (string option *
   'a Eliom_common.one_service_cookie_info Eliom_common.session_cookie ref)
  Http_frame.Cookievalues.t ref *
  (string option *
   Eliom_common.one_data_cookie_info Eliom_common.session_cookie ref)
  Lazy.t Http_frame.Cookievalues.t ref *
  ((string * 'b * 'c * 'd) option *
   Eliom_common.one_persistent_cookie_info Eliom_common.session_cookie ref)
  Lwt.t Lazy.t Http_frame.Cookievalues.t ref ->
  Http_frame.cookieset -> Http_frame.cookieset Lwt.t
val add_cookie_list_to_send :
  Eliom_common.sitedata ->
  Eliom_common.cookie list -> Http_frame.cookieset -> Http_frame.cookieset
val compute_new_ri_cookies' :
  float ->
  string list ->
  string Http_frame.Cookievalues.t ->
  Eliom_common.cookie list -> string Http_frame.Cookievalues.t
val compute_new_ri_cookies :
  float ->
  string list ->
  string Http_frame.Cookievalues.t ->
  ('a *
   'b Eliom_common.one_service_cookie_info Eliom_common.session_cookie ref)
  Http_frame.Cookievalues.t ref *
  ('c * Eliom_common.one_data_cookie_info Eliom_common.session_cookie ref)
  Lazy.t Http_frame.Cookievalues.t ref *
  ('d *
   Eliom_common.one_persistent_cookie_info Eliom_common.session_cookie ref)
  Lwt.t Lazy.t Http_frame.Cookievalues.t ref ->
  Eliom_common.cookie list -> string Http_frame.Cookievalues.t Lwt.t