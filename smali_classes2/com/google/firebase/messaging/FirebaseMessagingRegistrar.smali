.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(La6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0(La6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(La6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Lcom/google/firebase/d;

    .line 2
    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/d;

    const-class v0, Lj6/a;

    .line 3
    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lj6/a;

    const-class v0, Ls6/i;

    .line 4
    invoke-interface {p0, v0}, La6/e;->l(Ljava/lang/Class;)Lk6/b;

    move-result-object v3

    const-class v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 5
    invoke-interface {p0, v0}, La6/e;->l(Ljava/lang/Class;)Lk6/b;

    move-result-object v4

    const-class v0, Ll6/d;

    .line 6
    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ll6/d;

    const-class v0, Ll1/f;

    .line 7
    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ll1/f;

    const-class v0, Lh6/d;

    .line 8
    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lh6/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/d;Lj6/a;Lk6/b;Lk6/b;Ll6/d;Ll1/f;Lh6/d;)V

    return-object v8
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La6/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [La6/d;

    .line 1
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    invoke-static {v1}, La6/d;->c(Ljava/lang/Class;)La6/d$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/d;

    .line 3
    invoke-static {v2}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Lj6/a;

    .line 4
    invoke-static {v2}, La6/r;->g(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Ls6/i;

    .line 5
    invoke-static {v2}, La6/r;->h(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 6
    invoke-static {v2}, La6/r;->h(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Ll1/f;

    .line 7
    invoke-static {v2}, La6/r;->g(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Ll6/d;

    .line 8
    invoke-static {v2}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Lh6/d;

    .line 9
    invoke-static {v2}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/messaging/x;->a:Lcom/google/firebase/messaging/x;

    .line 10
    invoke-virtual {v1, v2}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, La6/d$b;->c()La6/d$b;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, La6/d$b;->d()La6/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-fcm"

    const-string v2, "23.0.8"

    .line 13
    invoke-static {v1, v2}, Ls6/h;->b(Ljava/lang/String;Ljava/lang/String;)La6/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
