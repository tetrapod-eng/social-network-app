import 'package:flutter_base_app/core/memory_storage.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/gateways/get/ImplTweetRepository.dart';
import 'package:flutter_base_app/pkg/social_network_app/app/presenter/tweet/TweetOutBound.dart';

import '../../../store/TweetStore.dart';

class InMemoryGetTweet implements ImplTweetRepository {
  late final TweetStore store = MemoryStorage().make();

  @override
  void getTweet() {
    List<TweetOutBound> list = [];

    list.add(TweetOutBound("ピカチュウ", "pikachu", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("ピカチュウ", "pikachu", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("ピカチュウ", "pikachu", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("ピカチュウ", "pikachu", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("ピカチュウ", "pikachu", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("わんぱち@散歩中", "one_pachi", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "歩くの疲れすぎて、近くに噴水なかったっけ"));

    store.setOutbounds(list);
  }

  @override
  void findByUserId(String userId) {
    List<TweetOutBound> list = [];
    List<TweetOutBound> outputs = [];
    list.add(TweetOutBound("pikachu", "ピカチュウ", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("pikachu", "ピカチュウ", "https://img.atwiki.jp/aniwotawiki/attach/8517/12135/%E3%82%B5%E3%83%88%E3%82%B7%E3%81%AE%E3%83%94%E3%82%AB%E3%83%81%E3%83%A5%E3%82%A62.jpg", "今日も軽く電流を流してやった。"));
    list.add(TweetOutBound("one_pachi", "わんぱち@散歩中", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("one_pachi", "わんぱち@散歩中", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("one_pachi", "わんぱち@散歩中", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "外暑すぎんか..."));
    list.add(TweetOutBound("one_pachi", "わんぱち@散歩中", "https://contents.oricon.co.jp/cdn-cgi/image/width=750,quality=85,format=auto/upimg/news/2233000/2232264/20220421_134703_p_o_6246.jpg", "歩くの疲れすぎて、近くに噴水なかったっけ"));

    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == userId) {
        outputs.add(list[i]);
      }
    }

    store.setOutbounds(outputs);
  }

}