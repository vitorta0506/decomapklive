.class final Lug/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Lug/f0;)V
    .locals 0

    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw p1
.end method
