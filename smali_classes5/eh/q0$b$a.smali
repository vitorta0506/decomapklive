.class Leh/q0$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/q0$b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leh/q0$b;


# direct methods
.method constructor <init>(Leh/q0$b;)V
    .locals 0

    iput-object p1, p0, Leh/q0$b$a;->a:Leh/q0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/q0$b$a;->a:Leh/q0$b;

    invoke-virtual {v0}, Leh/q0$b;->j()V

    .line 2
    iget-object v0, p0, Leh/q0$b$a;->a:Leh/q0$b;

    iget-object v0, v0, Leh/q0$b;->h:Leh/q0;

    invoke-static {v0}, Leh/q0;->h(Leh/q0;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/q0$b$a;->a:Leh/q0$b;

    invoke-static {v1}, Leh/q0$b;->c(Leh/q0$b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
