.class final Lcom/google/auth/oauth2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/s$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/auth/oauth2/AccessToken;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/google/auth/oauth2/s;->d:Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 7
    :goto_1
    new-instance p4, Lcom/google/auth/oauth2/AccessToken;

    invoke-direct {p4, p1, v0}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    iput-object p4, p0, Lcom/google/auth/oauth2/s;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 8
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/s;->b:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/s;->c:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/google/auth/oauth2/s;->e:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/google/auth/oauth2/s;->f:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/google/auth/oauth2/s$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/auth/oauth2/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/s$b;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/auth/oauth2/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/s$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/s;->a:Lcom/google/auth/oauth2/AccessToken;

    return-object v0
.end method
