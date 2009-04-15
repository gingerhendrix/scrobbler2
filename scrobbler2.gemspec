# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scrobbler2}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gareth Andrew", "Kurt Schrader"]
  s.date = %q{2009-04-15}
  s.description = %q{A ruby library for accessing the last.fm v2 webservices}
  s.email = %q{gingerhendrix@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "Rakefile",
    "VERSION.yml",
    "lib/scrobbler2.rb",
    "lib/scrobbler2/album.rb",
    "lib/scrobbler2/artist.rb",
    "lib/scrobbler2/auth.rb",
    "lib/scrobbler2/base.rb",
    "lib/scrobbler2/event.rb",
    "lib/scrobbler2/group.rb",
    "lib/scrobbler2/library.rb",
    "lib/scrobbler2/playlist.rb",
    "lib/scrobbler2/tag.rb",
    "lib/scrobbler2/user.rb",
    "test/acceptance/album/info_test.rb",
    "test/acceptance/artist/add_tags_test.rb",
    "test/acceptance/artist/events_test.rb",
    "test/acceptance/artist/info_test.rb",
    "test/acceptance/artist/shouts_test.rb",
    "test/acceptance/artist/similar_artists_test.rb",
    "test/acceptance/artist/tags_test.rb",
    "test/acceptance/artist/top_albums_test.rb",
    "test/acceptance/artist/top_fans.rb",
    "test/acceptance/artist/top_tags.rb",
    "test/acceptance/artist/top_tracks.rb",
    "test/acceptance/auth/auth_test.rb",
    "test/acceptance/event/info_test.rb",
    "test/acceptance/event/shouts_test.rb",
    "test/acceptance/group/members_test.rb",
    "test/acceptance/group/weekly_album_chart_test.rb",
    "test/acceptance/group/weekly_artist_chart_test.rb",
    "test/acceptance/group/weekly_chart_list_test.rb",
    "test/acceptance/group/weekly_track_chart_test.rb",
    "test/acceptance/library/albums_test.rb",
    "test/acceptance/library/artists_test.rb",
    "test/acceptance/library/tracks_test.rb",
    "test/acceptance/playlist/fetch_test.rb",
    "test/acceptance/shared/album.rb",
    "test/acceptance/shared/artist.rb",
    "test/acceptance/shared/paged_result.rb",
    "test/acceptance/shared/track.rb",
    "test/acceptance/tag/similar_test.rb",
    "test/acceptance/tag/top_albums_test.rb",
    "test/acceptance/tag/top_artists_test.rb",
    "test/acceptance/tag/top_tags_test.rb",
    "test/acceptance/tag/top_tracks_test.rb",
    "test/acceptance/tag/weekly_artist_chart.rb",
    "test/acceptance/tag/weekly_chart_list.rb",
    "test/acceptance/test_helper.rb",
    "test/acceptance/user/info_test.rb",
    "test/unit/album_spec.rb",
    "test/unit/artist_spec.rb",
    "test/unit/auth_spec.rb",
    "test/unit/base_spec.rb",
    "test/unit/event_spec.rb",
    "test/unit/group_spec.rb",
    "test/unit/library_spec.rb",
    "test/unit/playlist_spec.rb",
    "test/unit/spec_helper.rb",
    "test/unit/tag_spec.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/gingerhendrix/scrobbler2}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{A ruby library for accessing the last.fm v2 webservices}
  s.test_files = [
    "test/acceptance/test_helper.rb",
    "test/acceptance/auth/auth_test.rb",
    "test/acceptance/user/info_test.rb",
    "test/acceptance/artist/info_test.rb",
    "test/acceptance/artist/top_albums_test.rb",
    "test/acceptance/artist/similar_artists_test.rb",
    "test/acceptance/artist/shouts_test.rb",
    "test/acceptance/artist/events_test.rb",
    "test/acceptance/artist/top_fans.rb",
    "test/acceptance/artist/top_tags.rb",
    "test/acceptance/artist/top_tracks.rb",
    "test/acceptance/artist/tags_test.rb",
    "test/acceptance/artist/add_tags_test.rb",
    "test/acceptance/album/info_test.rb",
    "test/acceptance/event/info_test.rb",
    "test/acceptance/event/shouts_test.rb",
    "test/acceptance/group/members_test.rb",
    "test/acceptance/group/weekly_chart_list_test.rb",
    "test/acceptance/group/weekly_track_chart_test.rb",
    "test/acceptance/group/weekly_album_chart_test.rb",
    "test/acceptance/group/weekly_artist_chart_test.rb",
    "test/acceptance/library/albums_test.rb",
    "test/acceptance/library/artists_test.rb",
    "test/acceptance/library/tracks_test.rb",
    "test/acceptance/playlist/fetch_test.rb",
    "test/acceptance/tag/similar_test.rb",
    "test/acceptance/tag/top_albums_test.rb",
    "test/acceptance/tag/top_artists_test.rb",
    "test/acceptance/tag/top_tags_test.rb",
    "test/acceptance/tag/top_tracks_test.rb",
    "test/acceptance/tag/weekly_artist_chart.rb",
    "test/acceptance/tag/weekly_chart_list.rb",
    "test/acceptance/shared/album.rb",
    "test/acceptance/shared/paged_result.rb",
    "test/acceptance/shared/track.rb",
    "test/acceptance/shared/artist.rb",
    "test/unit/spec_helper.rb",
    "test/unit/auth_spec.rb",
    "test/unit/artist_spec.rb",
    "test/unit/base_spec.rb",
    "test/unit/album_spec.rb",
    "test/unit/event_spec.rb",
    "test/unit/group_spec.rb",
    "test/unit/library_spec.rb",
    "test/unit/playlist_spec.rb",
    "test/unit/tag_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
