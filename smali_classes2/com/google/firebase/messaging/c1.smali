.class public final synthetic Lcom/google/firebase/messaging/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/c;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Lt4/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/d1$a;->b(Ljava/util/concurrent/ScheduledFuture;Lt4/g;)V

    return-void
.end method
