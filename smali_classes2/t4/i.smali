.class public final Lt4/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt4/e0;

    invoke-direct {v0}, Lt4/e0;-><init>()V

    sput-object v0, Lt4/i;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lt4/d0;

    invoke-direct {v0}, Lt4/d0;-><init>()V

    sput-object v0, Lt4/i;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
