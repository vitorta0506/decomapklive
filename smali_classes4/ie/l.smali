.class final Lie/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "sha256/1XUWswVGCeFUaI5FKrhY7R+dIrDXIzTtDy/WDGcjAoY="

    const-string v1, "sha256/8ca6Zwz8iOTfUpc8rkIPCgid1HQUT+WAbEIAZOFZEik="

    const-string v2, "sha256/uUwZgwDOxcBXrQcntwu+kYFpkiVkOaezL0WYEZ3anJc="

    const-string v3, "sha256/I/Lt/z7ekCWanjD0Cvj5EqXls2lOaThEA0H2Bg4BT/o="

    const-string v4, "sha256/Wd8xe/qfTwq3ylFNd3IpaqLHZbh2ZNCLluVzmeNkcpw="

    const-string v5, "sha256/O4rGMvpV1NfGyWRRTZ6v92jubDQNBdwlK+E35oZJ9qo="

    const-string v6, "sha256/i7WTqTvh0OioIruIfFR4kMPnBqrS2rdiVPl/s2uC/CY="

    const-string v7, "sha256/WoiWRyIOVNa9ihaBciRSC7XHjliYS9VwUGOIud4PB18="

    const-string v8, "sha256/r/mIkG3eEpVdm+u/ko/cwxzOMo1bk4TyHIlByibiA5E="

    const-string v9, "sha256/Fe7TOVlLME+M+Ee0dzcdjW/sYfTbKwGvWJ58U7Ncrkw="

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lie/l;->a:Ljava/util/List;

    return-void
.end method

.method static declared-synchronized a()Lokhttp3/CertificatePinner;
    .locals 7

    const-class v0, Lie/l;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v1}, Lokhttp3/CertificatePinner$Builder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "https://api.snapkit.com"

    .line 2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    :try_start_3
    sget-object v3, Lie/l;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 6
    invoke-virtual {v1, v2, v5}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 8
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
