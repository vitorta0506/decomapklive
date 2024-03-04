.class public final Ly4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ly4/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ly4/a;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ly4/d;

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ly4/c;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ly4/c;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    sget-object v3, Ly4/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p0, v1, v2, v3}, Ly4/d;-><init>(Landroid/content/Context;Ljava/lang/Runtime;Ly4/c;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method
