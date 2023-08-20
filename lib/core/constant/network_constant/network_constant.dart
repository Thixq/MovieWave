// ignore_for_file: file_names, public_member_api_docs, lines_longer_than_80_chars

class NetworkConstant {
  // base url
  static const baseUrl = 'https://api.themoviedb.org/3';
  static const imageUrl = 'https://image.tmdb.org/t/p';
  // bearer token and apikey
  static const bearerToken =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkMGFiNjAzMjQ2NzRjZDRiNGEzNjNkMTQ2M2E1N2RiNSIsInN1YiI6IjY0YmI4YTg1ZWI3OWMyMDBmZjljNzM5MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.LtPHV6eAOkakCp3bUVeBDbFo5B27jOXclwBvUkMnYlI';
  static const apiKey = 'd0ab60324674cd4b4a363d1463a57db5';
  // request parameter
  static const query = 'query';
  static const atr = 'append_to_response';
  static const imglang = 'include_image_language';
  // movie and tv path
  static const moviePath = '/movie';
  static const tvPath = '/tv';
  static const seasonPath = '/season';
  static const episodePath = '/episode';
  // search path
  static const searchPath = '/search';
  static const discoverPath = '/discover';
  static const genre = '/genre';
  // language path
  static const langPath = '/language';
  // top-rated, now-playing path, airing today path
  static const topRatePath = '/top_rated';
  static const nowPlayingPath = '/now_playing';
  static const airingToday = 'airing_today';
}
