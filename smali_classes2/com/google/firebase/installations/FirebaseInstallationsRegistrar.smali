.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
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

.method public static synthetic a(La6/e;)Ll6/d;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(La6/e;)Ll6/d;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(La6/e;)Ll6/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/installations/c;

    const-class v1, Lcom/google/firebase/d;

    .line 2
    invoke-interface {p0, v1}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/d;

    const-class v2, Li6/i;

    invoke-interface {p0, v2}, La6/e;->l(Ljava/lang/Class;)Lk6/b;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/d;Lk6/b;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "La6/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [La6/d;

    .line 1
    const-class v1, Ll6/d;

    .line 2
    invoke-static {v1}, La6/d;->c(Ljava/lang/Class;)La6/d$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/d;

    .line 3
    invoke-static {v2}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    const-class v2, Li6/i;

    .line 4
    invoke-static {v2}, La6/r;->h(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    sget-object v2, Ll6/e;->a:Ll6/e;

    .line 5
    invoke-virtual {v1, v2}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, La6/d$b;->d()La6/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 7
    invoke-static {}, Li6/h;->a()La6/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fire-installations"

    const-string v2, "17.0.2"

    .line 8
    invoke-static {v1, v2}, Ls6/h;->b(Ljava/lang/String;Ljava/lang/String;)La6/d;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
