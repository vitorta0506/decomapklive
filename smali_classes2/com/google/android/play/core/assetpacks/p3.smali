.class final Lcom/google/android/play/core/assetpacks/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Lcom/google/android/play/core/internal/g;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;

.field private final b:Lcom/google/android/play/core/internal/g1;

.field private final c:Lcom/google/android/play/core/assetpacks/y;

.field private final d:Lb5/k;

.field private final e:Lcom/google/android/play/core/assetpacks/y1;

.field private final f:Lcom/google/android/play/core/assetpacks/j1;

.field private final g:Lcom/google/android/play/core/assetpacks/r0;

.field private final h:Lcom/google/android/play/core/internal/g1;

.field private final i:Lv4/b;

.field private final j:Lcom/google/android/play/core/assetpacks/t2;

.field private final k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/g;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/p3;->l:Lcom/google/android/play/core/internal/g;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/y;Lb5/k;Lcom/google/android/play/core/assetpacks/y1;Lcom/google/android/play/core/assetpacks/j1;Lcom/google/android/play/core/assetpacks/r0;Lcom/google/android/play/core/internal/g1;Lv4/b;Lcom/google/android/play/core/assetpacks/t2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/p3;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/p3;->b:Lcom/google/android/play/core/internal/g1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/p3;->c:Lcom/google/android/play/core/assetpacks/y;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/p3;->d:Lb5/k;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/p3;->e:Lcom/google/android/play/core/assetpacks/y1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/p3;->f:Lcom/google/android/play/core/assetpacks/j1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/p3;->g:Lcom/google/android/play/core/assetpacks/r0;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/p3;->h:Lcom/google/android/play/core/internal/g1;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/p3;->i:Lv4/b;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/p3;->j:Lcom/google/android/play/core/assetpacks/t2;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/play/core/assetpacks/p3;)Lcom/google/android/play/core/assetpacks/r0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/p3;->g:Lcom/google/android/play/core/assetpacks/r0;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/assetpacks/p3;->l:Lcom/google/android/play/core/internal/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p3;->h:Lcom/google/android/play/core/internal/g1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/o3;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/o3;-><init>(Lcom/google/android/play/core/assetpacks/p3;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final synthetic c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p3;->b:Lcom/google/android/play/core/internal/g1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/c4;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p3;->a:Lcom/google/android/play/core/assetpacks/e0;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/e0;->G()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/c4;->g(Ljava/util/Map;)Ld5/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p3;->h:Lcom/google/android/play/core/internal/g1;

    .line 3
    invoke-interface {v1}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/p3;->a:Lcom/google/android/play/core/assetpacks/e0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/play/core/assetpacks/n3;

    invoke-direct {v3, v2}, Lcom/google/android/play/core/assetpacks/n3;-><init>(Lcom/google/android/play/core/assetpacks/e0;)V

    .line 4
    invoke-virtual {v0, v1, v3}, Ld5/d;->c(Ljava/util/concurrent/Executor;Ld5/c;)Ld5/d;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p3;->h:Lcom/google/android/play/core/internal/g1;

    .line 5
    invoke-interface {v1}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/m3;->a:Lcom/google/android/play/core/assetpacks/m3;

    .line 6
    invoke-virtual {v0, v1, v2}, Ld5/d;->b(Ljava/util/concurrent/Executor;Ld5/b;)Ld5/d;

    return-void
.end method

.method final d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p3;->c:Lcom/google/android/play/core/assetpacks/y;

    invoke-virtual {v0}, Lx4/d;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/p3;->c:Lcom/google/android/play/core/assetpacks/y;

    .line 2
    invoke-virtual {v1, p1}, Lx4/d;->c(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/p3;->e()V

    :cond_0
    return-void
.end method
