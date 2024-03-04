.class public Lcom/google/longrunning/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/d;


# instance fields
.field private final a:Lu6/b;


# direct methods
.method protected constructor <init>(Lu6/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/longrunning/b;->a:Lu6/b;

    return-void
.end method

.method public static final a(Lu6/b;)Lcom/google/longrunning/b;
    .locals 1

    new-instance v0, Lcom/google/longrunning/b;

    invoke-direct {v0, p0}, Lcom/google/longrunning/b;-><init>(Lu6/b;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/longrunning/b;->a:Lu6/b;

    invoke-virtual {v0}, Lu6/b;->close()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/google/longrunning/b;->a:Lu6/b;

    invoke-interface {v0}, Ll5/d;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/longrunning/b;->a:Lu6/b;

    invoke-interface {v0}, Ll5/d;->shutdown()V

    return-void
.end method
