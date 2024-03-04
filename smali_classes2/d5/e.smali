.class public final Ld5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld5/q;

    invoke-direct {v0}, Ld5/q;-><init>()V

    sput-object v0, Ld5/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Ld5/p;

    invoke-direct {v0}, Ld5/p;-><init>()V

    sput-object v0, Ld5/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
