.class public Lcom/google/firebase/datatransport/TransportRegistrar;
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

.method public static synthetic a(La6/e;)Ll1/f;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(La6/e;)Ll1/f;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(La6/e;)Ll1/f;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, La6/e;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Ln1/t;->f(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Ln1/t;->c()Ln1/t;

    move-result-object p0

    sget-object v0, Lcom/google/android/datatransport/cct/a;->h:Lcom/google/android/datatransport/cct/a;

    invoke-virtual {p0, v0}, Ln1/t;->g(Ln1/f;)Ll1/f;

    move-result-object p0

    return-object p0
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

    const/4 v0, 0x2

    new-array v0, v0, [La6/d;

    .line 1
    const-class v1, Ll1/f;

    .line 2
    invoke-static {v1}, La6/d;->c(Ljava/lang/Class;)La6/d$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    invoke-static {v2}, La6/r;->i(Ljava/lang/Class;)La6/r;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/d$b;->b(La6/r;)La6/d$b;

    move-result-object v1

    sget-object v2, Lb6/a;->a:Lb6/a;

    .line 4
    invoke-virtual {v1, v2}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, La6/d$b;->d()La6/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-transport"

    const-string v2, "18.1.6"

    .line 6
    invoke-static {v1, v2}, Ls6/h;->b(Ljava/lang/String;Ljava/lang/String;)La6/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
