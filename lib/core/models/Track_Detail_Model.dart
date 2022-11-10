// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'package:sangam/core/models/Genres.dart';
import 'package:sangam/core/models/Images.dart';

import 'Artist.dart';

TrackDetail trackDetailFromJson(String str) =>
    TrackDetail.fromJson(json.decode(str));

String trackDetailToJson(TrackDetail data) => json.encode(data.toJson());

class TrackDetail {
  TrackDetail({
    required this.type,
    required this.layout,
    required this.key,
    required this.title,
    required this.subtitle,
    required this.images,
    required this.share,
    required this.hub,
    required this.sections,
    required this.url,
    required this.artists,
    required this.alias,
    required this.isrc,
    required this.genres,
    required this.urlparams,
    required this.highlightsurls,
    required this.albumadamid,
    required this.trackadamid,
    required this.releasedate,
  });

  String layout;
  String type;
  String key;
  String title;
  String subtitle;
  Images images;
  Share share;
  Hub hub;
  List<Section> sections;
  String url;
  List<Artist> artists;
  String alias;
  String isrc;
  Genres genres;
  Urlparams urlparams;
  Highlightsurls highlightsurls;
  String albumadamid;
  String trackadamid;
  String releasedate;

  factory TrackDetail.fromJson(Map<String, dynamic> json) => TrackDetail(
        layout: json["layout"],
        type: json["type"],
        key: json["key"],
        title: json["title"],
        subtitle: json["subtitle"],
        images: Images.fromJson(json["images"]),
        share: Share.fromJson(json["share"]),
        hub: Hub.fromJson(json["hub"]),
        sections: List<Section>.from(
            json["sections"].map((x) => Section.fromJson(x))),
        url: json["url"],
        artists:
            List<Artist>.from(json["artists"].map((x) => Artist.fromJson(x))),
        alias: json["alias"],
        isrc: json["isrc"],
        genres: Genres.fromJson(json["genres"]),
        urlparams: Urlparams.fromJson(json["urlparams"]),
        highlightsurls: Highlightsurls.fromJson(json["highlightsurls"]),
        albumadamid: json["albumadamid"],
        trackadamid: json["trackadamid"],
        releasedate: json["releasedate"],
      );

  Map<String, dynamic> toJson() => {
        "layout": layout,
        "type": type,
        "key": key,
        "title": title,
        "subtitle": subtitle,
        "images": images.toJson(),
        "share": share.toJson(),
        "hub": hub.toJson(),
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
        "url": url,
        "artists": List<dynamic>.from(artists.map((x) => x.toJson())),
        "alias": alias,
        "isrc": isrc,
        "genres": genres.toJson(),
        "urlparams": urlparams.toJson(),
        "highlightsurls": highlightsurls.toJson(),
        "albumadamid": albumadamid,
        "trackadamid": trackadamid,
        "releasedate": releasedate,
      };
}

class Highlightsurls {
  Highlightsurls();

  factory Highlightsurls.fromJson(Map<String, dynamic> json) =>
      Highlightsurls();

  Map<String, dynamic> toJson() => {};
}

class Hub {
  Hub({
    required this.type,
    required this.image,
    required this.actions,
    required this.options,
    required this.explicit,
    required this.displayname,
  });

  String type;
  String image;
  List<Action> actions;
  List<Option> options;
  bool explicit;
  String displayname;

  factory Hub.fromJson(Map<String, dynamic> json) => Hub(
        type: json["type"],
        image: json["image"],
        actions:
            List<Action>.from(json["actions"].map((x) => Action.fromJson(x))),
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        explicit: json["explicit"],
        displayname: json["displayname"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "image": image,
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "explicit": explicit,
        "displayname": displayname,
      };
}

class Action {
  Action({
    required this.name,
    required this.type,
    required this.id,
    required this.uri,
  });

  String name;
  String type;
  String id;
  String uri;

  factory Action.fromJson(Map<String, dynamic> json) => Action(
        name: json["name"],
        type: json["type"],
        id: json["id"] == null ? null : json["id"],
        uri: json["uri"] == null ? null : json["uri"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "id": id = id,
        "uri": uri = uri,
      };
}

class Option {
  Option({
    required this.caption,
    required this.actions,
    required this.beacondata,
    required this.image,
    required this.type,
    required this.listcaption,
    required this.overflowimage,
    required this.colouroverflowimage,
    required this.providername,
  });

  String caption;
  List<Action> actions;
  OptionBeacondata beacondata;
  String image;
  String type;
  String listcaption;
  String overflowimage;
  bool colouroverflowimage;
  String providername;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        caption: json["caption"],
        actions:
            List<Action>.from(json["actions"].map((x) => Action.fromJson(x))),
        beacondata: OptionBeacondata.fromJson(json["beacondata"]),
        image: json["image"],
        type: json["type"],
        listcaption: json["listcaption"],
        overflowimage: json["overflowimage"],
        colouroverflowimage: json["colouroverflowimage"],
        providername: json["providername"],
      );

  Map<String, dynamic> toJson() => {
        "caption": caption,
        "actions": List<dynamic>.from(actions.map((x) => x.toJson())),
        "beacondata": beacondata.toJson(),
        "image": image,
        "type": type,
        "listcaption": listcaption,
        "overflowimage": overflowimage,
        "colouroverflowimage": colouroverflowimage,
        "providername": providername,
      };
}

class OptionBeacondata {
  OptionBeacondata({
    required this.type,
    required this.providername,
  });

  String type;
  String providername;

  factory OptionBeacondata.fromJson(Map<String, dynamic> json) =>
      OptionBeacondata(
        type: json["type"],
        providername: json["providername"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "providername": providername,
      };
}

class Section {
  Section({
    required this.type,
    required this.metapages,
    required this.tabname,
    required this.metadata,
    required this.text,
    required this.footer,
    required this.beacondata,
  });

  String type;
  List<Metapage> metapages;
  String tabname;
  List<Metadatum> metadata;
  List<String> text;
  String footer;
  SectionBeacondata beacondata;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        type: json["type"],
        metapages: json["metapages"] = List<Metapage>.from(
            json["metapages"].map((x) => Metapage.fromJson(x))),
        tabname: json["tabname"],
        metadata: json["metadata"] = List<Metadatum>.from(
            json["metadata"].map((x) => Metadatum.fromJson(x))),
        text: json["text"] = List<String>.from(json["text"].map((x) => x)),
        footer: json["footer"] == null ? null : json["footer"],
        beacondata: json["beacondata"] =
            SectionBeacondata.fromJson(json["beacondata"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "metapages": metapages == null
            ? null
            : List<dynamic>.from(metapages.map((x) => x.toJson())),
        "tabname": tabname,
        "metadata": metadata == null
            ? null
            : List<dynamic>.from(metadata.map((x) => x.toJson())),
        "text": text == null ? null : List<dynamic>.from(text.map((x) => x)),
        "footer": footer == null ? null : footer,
        "beacondata": beacondata == null ? null : beacondata.toJson(),
      };
}

class SectionBeacondata {
  SectionBeacondata({
    required this.lyricsid,
    required this.providername,
    required this.commontrackid,
  });

  String lyricsid;
  String providername;
  String commontrackid;

  factory SectionBeacondata.fromJson(Map<String, dynamic> json) =>
      SectionBeacondata(
        lyricsid: json["lyricsid"],
        providername: json["providername"],
        commontrackid: json["commontrackid"],
      );

  Map<String, dynamic> toJson() => {
        "lyricsid": lyricsid,
        "providername": providername,
        "commontrackid": commontrackid,
      };
}

class Metadatum {
  Metadatum({
    required this.title,
    required this.text,
  });

  String title;
  String text;

  factory Metadatum.fromJson(Map<String, dynamic> json) => Metadatum(
        title: json["title"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "text": text,
      };
}

class Metapage {
  Metapage({
    required this.image,
    required this.caption,
  });

  String image;
  String caption;

  factory Metapage.fromJson(Map<String, dynamic> json) => Metapage(
        image: json["image"],
        caption: json["caption"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "caption": caption,
      };
}

class Share {
  Share({
    required this.subject,
    required this.text,
    required this.href,
    required this.image,
    required this.twitter,
    required this.html,
    required this.avatar,
    required this.snapchat,
  });

  String subject;
  String text;
  String href;
  String image;
  String twitter;
  String html;
  String avatar;
  String snapchat;

  factory Share.fromJson(Map<String, dynamic> json) => Share(
        subject: json["subject"],
        text: json["text"],
        href: json["href"],
        image: json["image"],
        twitter: json["twitter"],
        html: json["html"],
        avatar: json["avatar"],
        snapchat: json["snapchat"],
      );

  Map<String, dynamic> toJson() => {
        "subject": subject,
        "text": text,
        "href": href,
        "image": image,
        "twitter": twitter,
        "html": html,
        "avatar": avatar,
        "snapchat": snapchat,
      };
}

class Urlparams {
  Urlparams({
    required this.tracktitle,
    required this.trackartist,
  });

  String tracktitle;
  String trackartist;

  factory Urlparams.fromJson(Map<String, dynamic> json) => Urlparams(
        tracktitle: json["{tracktitle}"],
        trackartist: json["{trackartist}"],
      );

  Map<String, dynamic> toJson() => {
        "{tracktitle}": tracktitle,
        "{trackartist}": trackartist,
      };
}
