.class Lcom/tencent/imsdk/group/GroupManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/group/GroupManager$1;->onMemberEnter(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/imsdk/group/GroupManager$1;

.field final synthetic val$groupID:Ljava/lang/String;

.field final synthetic val$memberList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/group/GroupManager$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iput-object p2, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->val$groupID:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->val$memberList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->this$1:Lcom/tencent/imsdk/group/GroupManager$1;

    iget-object v0, v0, Lcom/tencent/imsdk/group/GroupManager$1;->this$0:Lcom/tencent/imsdk/group/GroupManager;

    invoke-static {v0}, Lcom/tencent/imsdk/group/GroupManager;->access$100(Lcom/tencent/imsdk/group/GroupManager;)Lcom/tencent/imsdk/group/GroupListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->val$groupID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/imsdk/group/GroupManager$1$1;->val$memberList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/group/GroupListener;->onMemberEnter(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
