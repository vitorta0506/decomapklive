.class public final synthetic Li6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/heartbeatinfo/a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6/d;->a:Lcom/google/firebase/heartbeatinfo/a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Li6/d;->a:Lcom/google/firebase/heartbeatinfo/a;

    invoke-static {v0}, Lcom/google/firebase/heartbeatinfo/a;->g(Lcom/google/firebase/heartbeatinfo/a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
