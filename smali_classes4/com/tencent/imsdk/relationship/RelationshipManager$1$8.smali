.class Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/relationship/RelationshipManager$1;->OnFriendApplicationListRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/relationship/RelationshipManager$1;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/relationship/RelationshipManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;->this$1:Lcom/tencent/imsdk/relationship/RelationshipManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;->this$1:Lcom/tencent/imsdk/relationship/RelationshipManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/relationship/RelationshipManager$1;->this$0:Lcom/tencent/imsdk/relationship/RelationshipManager;

    invoke-static {v0}, Lcom/tencent/imsdk/relationship/RelationshipManager;->access$100(Lcom/tencent/imsdk/relationship/RelationshipManager;)Lcom/tencent/imsdk/relationship/FriendshipListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/relationship/RelationshipManager$1$8;->this$1:Lcom/tencent/imsdk/relationship/RelationshipManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/relationship/RelationshipManager$1;->this$0:Lcom/tencent/imsdk/relationship/RelationshipManager;

    invoke-static {v0}, Lcom/tencent/imsdk/relationship/RelationshipManager;->access$100(Lcom/tencent/imsdk/relationship/RelationshipManager;)Lcom/tencent/imsdk/relationship/FriendshipListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/relationship/FriendshipListener;->OnFriendApplicationListRead()V

    :cond_0
    return-void
.end method