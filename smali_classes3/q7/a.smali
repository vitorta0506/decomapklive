.class public Lq7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/Language;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq7/a$a;
    }
.end annotation


# static fields
.field static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static h:Lq7/a;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;
    .annotation build Lcom/guochao/faceshow/aaspring/utils/Language$SupportedLanguage;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq7/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lq7/a;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq7/a;->g:Ljava/util/List;

    const-string v1, "ja"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "zh"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "zh-rHK"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "en"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ko"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fr"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "it"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ru"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "es"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "de"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "pt"

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hi"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ar"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "vi"

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "th"

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "in"

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tr"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq7/a;->d:Ljava/util/List;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq7/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq7/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lq7/a;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zh"

    return-object v0

    :cond_1
    const-string v0, "en"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "en"

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "-"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "zh-rHK"

    return-object p1
.end method

.method public static e()Lq7/a;
    .locals 2

    .line 1
    sget-object v0, Lq7/a;->h:Lq7/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lq7/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lq7/a;->h:Lq7/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lq7/a;

    invoke-direct {v1}, Lq7/a;-><init>()V

    sput-object v1, Lq7/a;->h:Lq7/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lq7/a;->h:Lq7/a;

    return-object v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lq7/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addLanguageListener(Lq7/a$a;)V
    .locals 1

    iget-object v0, p0, Lq7/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq7/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    :goto_0
    const-string v1, "in"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "id"

    :cond_1
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq7/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    :goto_0
    const-string v1, "in"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "id"

    :cond_1
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq7/a;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/a;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "en"

    return-object v0

    :cond_0
    const-string v1, "in"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lq7/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lq7/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "en"

    return-object p1

    :cond_0
    const-string v0, "zh"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "zh-rcn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "zh-hans"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "zh-hant"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "zh-rHK"

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    const-string v0, "zh-rhk"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "zh-rtw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->b:Landroid/content/Context;

    const-string v0, "language"

    .line 2
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Lq7/a;->n(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lq7/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lq7/a;->a:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lq7/a;->a:Z

    .line 8
    :goto_0
    iget-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lq7/a;->e:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lq7/a;->f:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .locals 2

    invoke-virtual {p0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lq7/a;->m()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 7
    new-instance v2, Landroid/os/LocaleList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/Locale;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 8
    invoke-static {v2}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 10
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/util/Locale;
    .locals 13

    .line 1
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "zh"

    const-string v5, "vi"

    const-string v6, "tr"

    const-string v7, "th"

    const-string v8, "ru"

    const-string v9, "pt"

    const-string v10, "hi"

    const-string v11, "es"

    const-string v12, "ar"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "ko"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "ja"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "it"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_b
    const-string v3, "fr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_d
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_e
    const-string v3, "de"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_f
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_10
    const-string v3, "zh-rHK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x0

    :goto_0
    const-string v0, ""

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 3
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 4
    :pswitch_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :pswitch_2
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :pswitch_3
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v7, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 7
    :pswitch_4
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v8, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :pswitch_5
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v9, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 9
    :pswitch_6
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    return-object v0

    .line 10
    :pswitch_7
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    return-object v0

    .line 11
    :pswitch_8
    sget-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    return-object v0

    .line 12
    :pswitch_9
    new-instance v1, Ljava/util/Locale;

    const-string v2, "id"

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 13
    :pswitch_a
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v10, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 14
    :pswitch_b
    sget-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    return-object v0

    .line 15
    :pswitch_c
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v11, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 16
    :pswitch_d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v0

    .line 17
    :pswitch_e
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    return-object v0

    .line 18
    :pswitch_f
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v12, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 19
    :pswitch_10
    new-instance v0, Ljava/util/Locale;

    const-string v1, "HK"

    invoke-direct {v0, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2a010e2a -> :sswitch_10
        0xc31 -> :sswitch_f
        0xc81 -> :sswitch_e
        0xca9 -> :sswitch_d
        0xcae -> :sswitch_c
        0xccc -> :sswitch_b
        0xd01 -> :sswitch_a
        0xd25 -> :sswitch_9
        0xd2b -> :sswitch_8
        0xd37 -> :sswitch_7
        0xd64 -> :sswitch_6
        0xe04 -> :sswitch_5
        0xe43 -> :sswitch_4
        0xe74 -> :sswitch_3
        0xe7e -> :sswitch_2
        0xeb3 -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Lq7/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lq7/a;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->f:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lq7/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->e:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->f:Ljava/lang/String;

    .line 8
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lq7/a;->a:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lq7/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    .line 10
    :cond_2
    iget-object p1, p0, Lq7/a;->f:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lq7/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lq7/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/guochao/faceshow/aaspring/utils/Language$SupportedLanguage;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lq7/a;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lq7/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq7/a$a;

    .line 3
    iget-object v2, p0, Lq7/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lq7/a$a;->onLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iput-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lq7/a;->b:Landroid/content/Context;

    const-string v1, "language"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/context/GCApplication;->updateLocale()V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lq7/a;->a:Z

    .line 8
    iget-object p1, p0, Lq7/a;->c:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->k:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lq7/a;->e:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->j:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lq7/a;->f:Ljava/lang/String;

    sput-object p1, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->i:Ljava/lang/String;

    return-void
.end method

.method public removeLanguageListener(Lq7/a$a;)V
    .locals 1

    iget-object v0, p0, Lq7/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
