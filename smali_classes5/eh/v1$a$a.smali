.class Leh/v1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/v1$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leh/v1$a;


# direct methods
.method constructor <init>(Leh/v1$a;)V
    .locals 0

    iput-object p1, p0, Leh/v1$a$a;->a:Leh/v1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/v1$a$a;->a:Leh/v1$a;

    invoke-virtual {v0}, Leh/v1$a;->c()V

    .line 2
    iget-object v0, p0, Leh/v1$a$a;->a:Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->i:Leh/v1;

    invoke-static {v0}, Leh/v1;->k(Leh/v1;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Leh/v1$a$a;->a:Leh/v1$a;

    iget-object v1, v1, Leh/v1$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
