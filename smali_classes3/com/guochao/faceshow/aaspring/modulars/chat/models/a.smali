.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.implements Lo7/a;


# static fields
.field public static final ERROR_HAS_URL:I = 0x3ec

.field public static final ERROR_LEVEL_TOO_LOW:I = 0x3eb

.field public static final ERROR_NOT_CHAT_STATUS_YET:I = 0x3ea

.field public static final ERROR_SEND_BLACK:I = 0x3e8

.field public static final ERROR_SEND_TWO_MORE_COUNT:I = 0x3e9

.field public static final MESSAGE_TIPS_MULTI_LANGUAGE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TAG:Ljava/lang/String; = "Message"


# instance fields
.field private errorCode:I

.field greetingMessage:Z

.field hasFriendMark:Z

.field private isLook:Z

.field private isNewMessage:Z

.field private isOriginal:Z

.field private isTranslate:Z

.field private mConversationId:Ljava/lang/String;

.field private mConversationType:I

.field private mHasShowedSearch:Z

.field private mSearchKeyword:Ljava/lang/String;

.field mStatus:I

.field public message:Lcom/tencent/imsdk/v2/V2TIMMessage;

.field private otherLanguage:Ljava/lang/String;

.field private translate:Ljava/lang/String;

.field private with:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->MESSAGE_TIPS_MULTI_LANGUAGE:Ljava/util/Map;

    const-string v1, "en_emoji"

    const-string v2, "[Stickers]"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar_emoji"

    const-string v2, "[\u0645\u0644\u0635\u0642\u0627\u062a]"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de_emoji"

    const-string v2, "[Aufkleber]"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es_emoji"

    const-string v2, "[Pegatinas]"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr_emoji"

    const-string v2, "[Autocollants]"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi_emoji"

    const-string v2, "[\u0938\u094d\u091f\u093f\u0915\u0930]"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_emoji"

    const-string v2, "[Stiker]"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it_emoji"

    const-string v2, "[Adesivi]"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja_emoji"

    const-string v2, "[\u30b9\u30c6\u30c3\u30ab\u30fc]"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko_emoji"

    const-string v2, "[\uc2a4\ud2f0\ucee4]"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt_emoji"

    const-string v2, "[Adesivos]"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru_emoji"

    const-string v2, "[\u041d\u0430\u043a\u043b\u0435\u0439\u043a\u0438]"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th_emoji"

    const-string v2, "[\u0e2a\u0e15\u0e34\u0e4a\u0e01\u0e40\u0e01\u0e2d\u0e23\u0e4c]"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr_emoji"

    const-string v2, " [\u00c7\u0131kartmalar]"

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi_emoji"

    const-string v2, "[H\u00ecnh d\u00e1n]"

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_emoji"

    const-string v2, "[\u8d34\u7eb8]"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr_emoji"

    const-string v2, "[\u8cbc\u5716]"

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en_voice"

    const-string v2, "[Audio]"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar_voice"

    const-string v3, "[\u0635\u0648\u062a]"

    .line 20
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de_voice"

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es_voice"

    .line 22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr_voice"

    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi_voice"

    const-string v3, "[\u0906\u0935\u093e\u091c\u093c]"

    .line 24
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_voice"

    const-string v3, "[Suara]"

    .line 25
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it_voice"

    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja_voice"

    const-string v2, "[\u30aa\u30fc\u30c7\u30a3\u30aa]"

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko_voice"

    const-string v2, "[\uc74c\uc131]"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt_voice"

    const-string v2, "[\u00c1udio]"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru_voice"

    const-string v2, "[\u0410\u0443\u0434\u0438\u043e]"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th_voice"

    const-string v2, "[\u0e40\u0e2a\u0e35\u0e22\u0e07]"

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr_voice"

    const-string v2, "[Ses]"

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi_voice"

    const-string v2, "[gi\u1ecdng n\u00f3i]"

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_voice"

    const-string v2, "[\u8bed\u97f3]"

    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr_voice"

    const-string v2, "[\u8a9e\u97f3]"

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en_video"

    const-string v2, "[Video]"

    .line 36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar_video"

    const-string v3, "[\u0641\u064a\u062f\u064a\u0648 \u0642\u0635\u064a\u0631]"

    .line 37
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de_video"

    const-string v3, "[Kurzvideo]"

    .line 38
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es_video"

    const-string v3, "[Video corto]"

    .line 39
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr_video"

    const-string v3, "[Courte vid\u00e9o]"

    .line 40
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi_video"

    const-string v3, "[\u091b\u094b\u091f\u093e \u0935\u0940\u0921\u093f\u092f\u094b]"

    .line 41
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_video"

    const-string v3, "[video kecil]"

    .line 42
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it_video"

    const-string v3, "[Breve video]"

    .line 43
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja_video"

    const-string v3, "[\u77ed\u3044\u30d3\u30c7\u30aa] "

    .line 44
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko_video"

    const-string v3, "[\uc9e7\uc740 \ube44\ub514\uc624]"

    .line 45
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt_video"

    const-string v3, "[V\u00eddeo curto]"

    .line 46
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru_video"

    const-string v3, "[\u041a\u043e\u0440\u043e\u0442\u043a\u043e\u0435 \u0432\u0438\u0434\u0435\u043e]"

    .line 47
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th_video"

    const-string v3, "[\u0e27\u0e34\u0e14\u0e35\u0e42\u0e2d\u0e02\u0e19\u0e32\u0e14\u0e40\u0e25\u0e47\u0e01]"

    .line 48
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr_video"

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi_video"

    const-string v2, "[video ng\u1eafn]"

    .line 50
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_video"

    const-string v2, "[\u89c6\u9891]"

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr_video"

    const-string v2, "[\u5c0f\u8996\u983b]"

    .line 52
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en_image"

    const-string v2, "[Image]"

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar_image"

    const-string v3, "[\u0635\u0648\u0631\u0629]"

    .line 54
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de_image"

    const-string v3, "[Bild]"

    .line 55
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es_image"

    const-string v3, "[Im\u00e1genes]"

    .line 56
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr_image"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi_image"

    const-string v2, "[\u091a\u093f\u0924\u094d\u0930]"

    .line 58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_image"

    const-string v2, "[gambar]"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it_image"

    const-string v2, "[Immagine]"

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja_image"

    const-string v2, "[\u5199\u771f]"

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko_image"

    const-string v2, "[\uc0ac\uc9c4]"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt_image"

    const-string v2, "[Imagem]"

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru_image"

    const-string v2, "[\u041e\u0431\u0440\u0430\u0437]"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th_image"

    const-string v2, "[\u0e23\u0e39\u0e1b\u0e20\u0e32\u0e1e]"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr_image"

    const-string v2, "[Resim]"

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi_image"

    const-string v2, "[h\u00ecnh \u1ea3nh]"

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_image"

    const-string v2, "[\u56fe\u7247]"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr_image"

    const-string v2, "[\u5716\u7247]"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "en_gift"

    const-string v2, "[Gift]"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar_gift"

    const-string v2, "[\u0647\u062f\u064a\u0629]"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de_gift"

    const-string v2, "[Geschenk]"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es_gift"

    const-string v2, "[Regalo]"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr_gift"

    const-string v3, "[Cadeau]"

    .line 74
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi_gift"

    const-string v3, "[\u0909\u092a\u0939\u093e\u0930]"

    .line 75
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id_gift"

    const-string v3, "[hadiah]"

    .line 76
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it_gift"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja_gift"

    const-string v2, "[\u30d7\u30ec\u30bc\u30f3\u30c8]"

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko_gift"

    const-string v2, "[\uc120\ubb3c]"

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt_gift"

    const-string v2, "[Presente]"

    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru_gift"

    const-string v2, "[\u041f\u043e\u0434\u0430\u0440\u043e\u043a]"

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th_gift"

    const-string v2, "[\u0e02\u0e2d\u0e07\u0e02\u0e27\u0e31\u0e0d]"

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr_gift"

    const-string v2, "[Hediye]"

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi_gift"

    const-string v2, "[qu\u00e0 t\u1eb7ng]"

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh_gift"

    const-string v2, "[\u793c\u7269]"

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr_gift"

    const-string v2, "[\u79ae\u7269]"

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationType:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationType:I

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->checkGreeting()V

    return-void
.end method

.method private checkGreeting()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->getElem(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMElem;->getNextElem()Lcom/tencent/imsdk/v2/V2TIMElem;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMCustomElem;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMCustomElem;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    const-string v1, "msg_type_isfriend"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->greetingMessage:Z

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->hasFriendMark:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->hasFriendMark:Z

    return-void
.end method


# virtual methods
.method public copyOf()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->k(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getConversationType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationType(I)V

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationType:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->errorCode:I

    return v0
.end method

.method public getItemType()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public getItemViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-object v0
.end method

.method public getOtherLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getRevokeSummary()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1200a2

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f120088

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSearchKeyword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mSearchKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mStatus:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getStatus()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformedOtherLanguage()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    const-string v2, "zh-rcn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    const-string v1, "zh-rhk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    const-string v1, "zh-rtw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_0
    const-string v0, "zhr"

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getTranslate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->translate:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslateFiles()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "im_files"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPrivateRootPathV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const-string v3, "userId"

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/io/File;

    const-string v2, "c2c"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "unknown"

    .line 9
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/io/File;

    const-string v1, "translate"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWith()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->with:I

    return v0
.end method

.method public isGreetingMessage()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->greetingMessage:Z

    return v0
.end method

.method public isHasFriendMark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->hasFriendMark:Z

    return v0
.end method

.method public isHasShowedSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mHasShowedSearch:Z

    return v0
.end method

.method public isLook()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook:Z

    return v0
.end method

.method public isNewMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isNewMessage:Z

    return v0
.end method

.method public isOnlineMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOriginal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isOriginal:Z

    return v0
.end method

.method public isRead()Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isRead()Z

    move-result v0

    return v0
.end method

.method public isSelf()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v0

    return v0
.end method

.method public isTranslate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isTranslate:Z

    return v0
.end method

.method public remove()V
    .locals 3

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->deleteMessages(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setConversationType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mConversationType:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->errorCode:I

    return-void
.end method

.method public setFriend(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/TXIMUtils;->setMessageFriendInfo(ZLcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public setGreetingMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->greetingMessage:Z

    return-void
.end method

.method public setHasFriendMark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->hasFriendMark:Z

    return-void
.end method

.method public setHasShowedSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mHasShowedSearch:Z

    return-void
.end method

.method public setLook(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isLook:Z

    return-void
.end method

.method public setNewMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isNewMessage:Z

    return-void
.end method

.method public setOriginal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isOriginal:Z

    return-void
.end method

.method public setOtherLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->otherLanguage:Ljava/lang/String;

    return-void
.end method

.method public setSearchKeyword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mSearchKeyword:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->mStatus:I

    return-void
.end method

.method public setTranslate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->translate:Ljava/lang/String;

    return-void
.end method

.method public setTranslate(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isTranslate:Z

    return-void
.end method

.method public setWith(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->with:I

    return-void
.end method

.method public shouldAddToServer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
