.class public Lwc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc/i$g;,
        Lwc/i$e;,
        Lwc/i$d;,
        Lwc/i$b;,
        Lwc/i$l;,
        Lwc/i$c;,
        Lwc/i$j;,
        Lwc/i$f;,
        Lwc/i$k;,
        Lwc/i$i;,
        Lwc/i$h;
    }
.end annotation


# static fields
.field private static final c:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lqc/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lqc/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lqc/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Ljava/util/List<",
            "Lcom/linecorp/linesdk/SendMessageResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final h:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lcom/linecorp/linesdk/openchat/MembershipStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lxc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lxc/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwc/i$l;

    invoke-direct {v0}, Lwc/i$l;-><init>()V

    sput-object v0, Lwc/i;->c:Lxc/c;

    .line 2
    new-instance v0, Lwc/i$d;

    invoke-direct {v0}, Lwc/i$d;-><init>()V

    sput-object v0, Lwc/i;->d:Lxc/c;

    .line 3
    new-instance v0, Lwc/i$c;

    invoke-direct {v0}, Lwc/i$c;-><init>()V

    sput-object v0, Lwc/i;->e:Lxc/c;

    .line 4
    new-instance v0, Lwc/i$e;

    invoke-direct {v0}, Lwc/i$e;-><init>()V

    sput-object v0, Lwc/i;->f:Lxc/c;

    .line 5
    new-instance v0, Lwc/i$g;

    invoke-direct {v0}, Lwc/i$g;-><init>()V

    sput-object v0, Lwc/i;->g:Lxc/c;

    .line 6
    new-instance v0, Lwc/i$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwc/i$h;-><init>(Lwc/i$a;)V

    sput-object v0, Lwc/i;->h:Lxc/c;

    .line 7
    new-instance v0, Lwc/i$i;

    invoke-direct {v0, v1}, Lwc/i$i;-><init>(Lwc/i$a;)V

    sput-object v0, Lwc/i;->i:Lxc/c;

    .line 8
    new-instance v0, Lwc/i$k;

    invoke-direct {v0, v1}, Lwc/i$k;-><init>(Lwc/i$a;)V

    sput-object v0, Lwc/i;->j:Lxc/c;

    .line 9
    new-instance v0, Lwc/i$f;

    invoke-direct {v0, v1}, Lwc/i$f;-><init>(Lwc/i$a;)V

    sput-object v0, Lwc/i;->k:Lxc/c;

    .line 10
    new-instance v0, Lwc/i$j;

    invoke-direct {v0, v1}, Lwc/i$j;-><init>(Lwc/i$a;)V

    sput-object v0, Lwc/i;->l:Lxc/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lxc/a;

    const-string v1, "5.7.0"

    invoke-direct {v0, p1, v1}, Lxc/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lwc/i;-><init>(Landroid/net/Uri;Lxc/a;)V

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Lxc/a;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxc/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lwc/i;->a:Landroid/net/Uri;

    .line 4
    iput-object p2, p0, Lwc/i;->b:Lxc/a;

    return-void
.end method

.method private static a(Lvc/d;)Ljava/util/Map;
    .locals 3
    .param p0    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Authorization"

    aput-object v2, v0, v1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lvc/d;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 3
    invoke-static {v0}, Lyc/f;->d([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Lvc/d;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lqc/c;
    .locals 3
    .param p1    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/linecorp/linesdk/openchat/OpenChatParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/d;",
            "Lcom/linecorp/linesdk/openchat/OpenChatParameters;",
            ")",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/openchat/OpenChatRoomInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/i;->a:Landroid/net/Uri;

    const-string v1, "openchat/v1"

    const-string v2, "openchats"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/i;->b:Lxc/a;

    .line 3
    invoke-static {p1}, Lwc/i;->a(Lvc/d;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/linecorp/linesdk/openchat/OpenChatParameters;->toJsonString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lwc/i;->i:Lxc/c;

    .line 5
    invoke-virtual {v1, v0, p1, p2, v2}, Lxc/a;->l(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lvc/d;)Lqc/c;
    .locals 4
    .param p1    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/d;",
            ")",
            "Lqc/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/i;->a:Landroid/net/Uri;

    const-string v1, "openchat/v1"

    const-string/jumbo v2, "terms/agreement"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/i;->b:Lxc/a;

    .line 3
    invoke-static {p1}, Lwc/i;->a(Lvc/d;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lwc/i;->h:Lxc/c;

    .line 5
    invoke-virtual {v1, v0, p1, v2, v3}, Lxc/a;->b(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method

.method public d(Lvc/d;)Lqc/c;
    .locals 4
    .param p1    # Lvc/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/d;",
            ")",
            "Lqc/c<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwc/i;->a:Landroid/net/Uri;

    const-string/jumbo v1, "v2"

    const-string v2, "profile"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyc/f;->e(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwc/i;->b:Lxc/a;

    .line 3
    invoke-static {p1}, Lwc/i;->a(Lvc/d;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lwc/i;->c:Lxc/c;

    .line 5
    invoke-virtual {v1, v0, p1, v2, v3}, Lxc/a;->b(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lxc/c;)Lqc/c;

    move-result-object p1

    return-object p1
.end method
