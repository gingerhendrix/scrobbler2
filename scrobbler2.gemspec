# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scrobbler2}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gareth Andrew", "Kurt Schrader"]
  s.date = %q{2009-02-23}
  s.description = %q{TODO}
  s.email = %q{kurt@karmalab.org}
  s.files = ["VERSION.yml", "lib/scrobbler2", "lib/scrobbler2/album.rb", "lib/scrobbler2/artist.rb", "lib/scrobbler2/auth.rb", "lib/scrobbler2/base.rb", "lib/scrobbler2/event.rb", "lib/scrobbler2/group.rb", "lib/scrobbler2/library.rb", "lib/scrobbler2/playlist.rb", "lib/scrobbler2/tag.rb", "lib/scrobbler2/user.rb", "lib/scrobbler2.rb", "test/acceptance", "test/acceptance/album", "test/acceptance/album/info_test.rb", "test/acceptance/artist", "test/acceptance/artist/add_tags_test.rb", "test/acceptance/artist/events_test.rb", "test/acceptance/artist/info_test.rb", "test/acceptance/artist/shouts_test.rb", "test/acceptance/artist/similar_artists_test.rb", "test/acceptance/artist/tags_test.rb", "test/acceptance/artist/top_albums_test.rb", "test/acceptance/artist/top_fans.rb", "test/acceptance/artist/top_tags.rb", "test/acceptance/artist/top_tracks.rb", "test/acceptance/auth", "test/acceptance/auth/auth_test.rb", "test/acceptance/event", "test/acceptance/event/info_test.rb", "test/acceptance/event/shouts_test.rb", "test/acceptance/group", "test/acceptance/group/members_test.rb", "test/acceptance/group/weekly_album_chart_test.rb", "test/acceptance/group/weekly_artist_chart_test.rb", "test/acceptance/group/weekly_chart_list_test.rb", "test/acceptance/group/weekly_track_chart_test.rb", "test/acceptance/library", "test/acceptance/library/albums_test.rb", "test/acceptance/library/artists_test.rb", "test/acceptance/library/tracks_test.rb", "test/acceptance/playlist", "test/acceptance/playlist/fetch_test.rb", "test/acceptance/shared", "test/acceptance/shared/album.rb", "test/acceptance/shared/artist.rb", "test/acceptance/shared/paged_result.rb", "test/acceptance/shared/track.rb", "test/acceptance/tag", "test/acceptance/tag/similar_test.rb", "test/acceptance/tag/top_albums_test.rb", "test/acceptance/tag/top_artists_test.rb", "test/acceptance/tag/top_tags_test.rb", "test/acceptance/tag/top_tracks_test.rb", "test/acceptance/tag/weekly_artist_chart.rb", "test/acceptance/tag/weekly_chart_list.rb", "test/acceptance/test_helper.rb", "test/acceptance/user", "test/acceptance/user/info_test.rb", "test/unit", "test/unit/album_spec.rb", "test/unit/artist_spec.rb", "test/unit/auth_spec.rb", "test/unit/base_spec.rb", "test/unit/event_spec.rb", "test/unit/group_spec.rb", "test/unit/library_spec.rb", "test/unit/playlist_spec.rb", "test/unit/spec_helper.rb", "test/unit/tag_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/kschrader/scrobbler2}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
