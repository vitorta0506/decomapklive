.class public Lsc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrc/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc/d$a;
    }
.end annotation


# static fields
.field private static final e:Lqc/c;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lwc/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lwc/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lvc/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    sput-object v0, Lsc/d;->e:Lqc/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lwc/e;Lwc/i;Lvc/a;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lwc/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwc/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lvc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsc/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lsc/d;->b:Lwc/e;

    .line 4
    iput-object p3, p0, Lsc/d;->c:Lwc/i;

    .line 5
    iput-object p4, p0, Lsc/d;->d:Lvc/a;

    return-void
.end method

.method public static synthetic d(Lsc/d;Lvc/d;)Lqc/c;
    .locals 0

    invoke-direct {p0, p1}, Lsc/d;->h(Lvc/d;)Lqc/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lsc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lvc/d;)Lqc/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lsc/d;->g(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lvc/d;)Lqc/c;

    move-result-object p0

    return-object p0
.end method

.method private f(Lsc/d$a;)Lqc/c;
    .locals 4
    .param p1    # Lsc/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lsc/d$a<",
            "TT;>;)",
            "Lqc/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lsc/d;->d:Lvc/a;

    invoke-virtual {v0}, Lvc/a;->f()Lvc/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lsc/d;->e:Lqc/c;

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1, v0}, Lsc/d$a;->a(Lvc/d;)Lqc/c;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get access token fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method private synthetic g(Lcom/linecorp/linesdk/openchat/OpenChatParameters;Lvc/d;)Lqc/c;
    .locals 1

    iget-object v0, p0, Lsc/d;->c:Lwc/i;

    invoke-virtual {v0, p2, p1}, Lwc/i;->b(Lvc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method private synthetic h(Lvc/d;)Lqc/c;
    .locals 1

    iget-object v0, p0, Lsc/d;->c:Lwc/i;

    invoke-virtual {v0, p1}, Lwc/i;->c(Lvc/d;)Lqc/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lqc/c;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lsc/d;->d:Lvc/a;

    invoke-virtual {v0}, Lvc/a;->f()Lvc/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lvc/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lsc/d;->b:Lwc/e;

    iget-object v2, p0, Lsc/d;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v0}, Lwc/e;->e(Ljava/lang/String;Lvc/d;)Lqc/c;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lqc/c;->g()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lqc/c;->d()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lqc/c;->c()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lqc/c;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvc/i;

    .line 9
    invoke-virtual {v1}, Lvc/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lvc/d;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lvc/i;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 11
    new-instance v0, Lvc/d;

    .line 12
    invoke-virtual {v1}, Lvc/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v1}, Lvc/i;->b()J

    move-result-wide v4

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lvc/d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    .line 15
    :try_start_1
    iget-object v1, p0, Lsc/d;->d:Lvc/a;

    invoke-virtual {v1, v0}, Lvc/a;->g(Lvc/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    new-instance v1, Lcom/linecorp/linesdk/LineAccessToken;

    .line 17
    invoke-virtual {v0}, Lvc/d;->a()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {v0}, Lvc/d;->b()J

    move-result-wide v4

    .line 19
    invoke-virtual {v0}, Lvc/d;->c()J

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    .line 20
    invoke-static {v1}, Lqc/c;->b(Ljava/lang/Object;)Lqc/c;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {v1, v2}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    return-object v0

    .line 24
    :cond_3
    :goto_1
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 25
    sget-object v1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v2, Lcom/linecorp/linesdk/LineApiError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access token fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v1, v2}, Lqc/c;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lqc/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lqc/c;
    .locals 1
    .param p1    # Lcom/linecorp/linesdk/openchat/OpenChatParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsc/c;

    invoke-direct {v0, p0, p1}, Lsc/c;-><init>(Lsc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V

    invoke-direct {p0, v0}, Lsc/d;->f(Lsc/d$a;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Lqc/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqc/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsc/b;

    invoke-direct {v0, p0}, Lsc/b;-><init>(Lsc/d;)V

    invoke-direct {p0, v0}, Lsc/d;->f(Lsc/d$a;)Lqc/c;

    move-result-object v0

    return-object v0
.end method
