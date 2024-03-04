.class public Lqc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lqc/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lqc/e;

.field public static final d:Lqc/e;

.field public static final e:Lqc/e;

.field public static final f:Lqc/e;

.field public static final g:Lqc/e;

.field public static final h:Lqc/e;

.field public static final i:Lqc/e;

.field public static final j:Lqc/e;

.field public static final k:Lqc/e;

.field public static final l:Lqc/e;

.field public static final m:Lqc/e;

.field public static final n:Lqc/e;

.field public static final o:Lqc/e;

.field public static final p:Lqc/e;

.field public static final q:Lqc/e;

.field public static final r:Lqc/e;

.field public static final s:Lqc/e;

.field public static final t:Lqc/e;

.field public static final u:Lqc/e;

.field public static final v:Lqc/e;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lqc/e;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Lqc/e;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->c:Lqc/e;

    .line 3
    new-instance v0, Lqc/e;

    const-string v1, "friends"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->d:Lqc/e;

    .line 4
    new-instance v0, Lqc/e;

    const-string v1, "groups"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->e:Lqc/e;

    .line 5
    new-instance v0, Lqc/e;

    const-string v1, "message.write"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->f:Lqc/e;

    .line 6
    new-instance v0, Lqc/e;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->g:Lqc/e;

    .line 7
    new-instance v0, Lqc/e;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->h:Lqc/e;

    .line 8
    new-instance v0, Lqc/e;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->i:Lqc/e;

    .line 9
    new-instance v0, Lqc/e;

    const-string v1, "gender"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->j:Lqc/e;

    .line 10
    new-instance v0, Lqc/e;

    const-string v1, "birthdate"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->k:Lqc/e;

    .line 11
    new-instance v0, Lqc/e;

    const-string v1, "address"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->l:Lqc/e;

    .line 12
    new-instance v0, Lqc/e;

    const-string v1, "real_name"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->m:Lqc/e;

    .line 13
    new-instance v0, Lqc/e;

    const-string v1, "onetime.share"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->n:Lqc/e;

    .line 14
    new-instance v0, Lqc/e;

    const-string v1, "openchat.term.agreement.status"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->o:Lqc/e;

    .line 15
    new-instance v0, Lqc/e;

    const-string v1, "openchat.create.join"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->p:Lqc/e;

    .line 16
    new-instance v0, Lqc/e;

    const-string v1, "openchat.info"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->q:Lqc/e;

    .line 17
    new-instance v0, Lqc/e;

    const-string v1, "openchatplug.managament"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->r:Lqc/e;

    .line 18
    new-instance v0, Lqc/e;

    const-string v1, "openchatplug.info"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->s:Lqc/e;

    .line 19
    new-instance v0, Lqc/e;

    const-string v1, "openchatplug.profile"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->t:Lqc/e;

    .line 20
    new-instance v0, Lqc/e;

    const-string v1, "openchatplug.send.message"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->u:Lqc/e;

    .line 21
    new-instance v0, Lqc/e;

    const-string v1, "openchatplug.receive.message.event"

    invoke-direct {v0, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lqc/e;->v:Lqc/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqc/e;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lqc/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqc/e;

    .line 3
    iget-object v1, v1, Lqc/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lqc/e;->c(Ljava/lang/String;)Lqc/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Lqc/e;

    invoke-direct {v2, v1}, Lqc/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lqc/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lqc/e;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqc/e;

    return-object p0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lqc/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, " "

    .line 3
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lqc/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, " "

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lqc/e;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lqc/e;

    .line 3
    iget-object v0, p0, Lqc/e;->a:Ljava/lang/String;

    iget-object p1, p1, Lqc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqc/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqc/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
