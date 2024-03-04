.class Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->onResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/g;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/g$e;->a:Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/g;->c(Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;)V

    return-void
.end method
