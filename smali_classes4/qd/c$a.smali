.class Lqd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/c;->c(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lod/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lod/b;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lqd/c$a;->a:Lod/b;

    iput-object p2, p0, Lqd/c$a;->b:Ljava/lang/Object;

    iput p3, p0, Lqd/c$a;->c:I

    iput-object p4, p0, Lqd/c$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqd/c$a;->a:Lod/b;

    instance-of v1, v0, Lod/a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lod/a;

    iget-object v1, p0, Lqd/c$a;->b:Ljava/lang/Object;

    iget v2, p0, Lqd/c$a;->c:I

    iget-object v3, p0, Lqd/c$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lod/a;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lqd/c$a;->a:Lod/b;

    iget-object v1, p0, Lqd/c$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lod/b;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
