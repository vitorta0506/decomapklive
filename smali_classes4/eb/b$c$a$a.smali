.class Leb/b$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b$c$a;


# direct methods
.method constructor <init>(Leb/b$c$a;)V
    .locals 0

    iput-object p1, p0, Leb/b$c$a$a;->a:Leb/b$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leb/b$c$a$a;->a:Leb/b$c$a;

    iget-object v0, v0, Leb/b$c$a;->a:Leb/b$c;

    iget-object v0, v0, Leb/b$c;->a:Leb/b;

    invoke-static {v0}, Leb/b;->j(Leb/b;)Lcom/guochao/faceshow/views/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/m;->c()V

    return-void
.end method
