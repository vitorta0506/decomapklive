.class Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;
.super Lcom/tencent/imsdk/group/GroupListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->initGroupListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;


# direct methods
.method constructor <init>(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-direct {p0}, Lcom/tencent/imsdk/group/GroupListener;-><init>()V

    return-void
.end method


# virtual methods
.method convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;->setGroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)V

    :cond_0
    return-object v0
.end method

.method convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/group/GroupMemberInfo;

    .line 3
    invoke-virtual {p0, v1}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onApplicationProcessed(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;ZLjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onApplicationProcessed(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGrantAdministrator(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGrantAdministrator(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupAttributeChanged(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupAttributeChanged(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupCreated(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupCreated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupDismissed(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupDismissed(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGroupInfoChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupInfoChangeItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/group/GroupInfoChangeItem;

    .line 3
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupChangeInfo;->setGroupInfoChangeItem(Lcom/tencent/imsdk/group/GroupInfoChangeItem;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupInfoChanged(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onGroupRecycled(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onGroupRecycled(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMemberEnter(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onMemberEnter(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMemberInfoChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;

    .line 3
    new-instance v2, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;

    invoke-direct {v2}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;-><init>()V

    .line 4
    invoke-virtual {v2, v1}, Lcom/tencent/imsdk/v2/V2TIMGroupMemberChangeInfo;->setGroupMemberInfoChangeItem(Lcom/tencent/imsdk/group/GroupMemberInfoChangeItem;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onMemberInfoChanged(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onMemberInvited(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onMemberInvited(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMemberKicked(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onMemberKicked(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMemberLeave(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onMemberLeave(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQuitFromGroup(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {v1, p1}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onQuitFromGroup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceiveJoinApplication(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onReceiveJoinApplication(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceiveRESTCustomData(Ljava/lang/String;[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, p1, v2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onReceiveRESTCustomData(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRevokeAdministrator(Ljava/lang/String;Lcom/tencent/imsdk/group/GroupMemberInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/group/GroupMemberInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {p0, p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->convertToV2GroupMemberInfo(Lcom/tencent/imsdk/group/GroupMemberInfo;)Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onRevokeAdministrator(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMGroupMemberInfo;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTopicCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onTopicCreated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTopicDeleted(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {v0}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onTopicDeleted(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTopicInfoChanged(Ljava/lang/String;Lcom/tencent/imsdk/group/TopicInfo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;

    invoke-direct {v0}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/tencent/imsdk/v2/V2TIMTopicInfo;->setTopicInfo(Lcom/tencent/imsdk/group/TopicInfo;)V

    .line 3
    iget-object p2, p0, Lcom/tencent/imsdk/v2/V2TIMManagerImpl$35;->this$0:Lcom/tencent/imsdk/v2/V2TIMManagerImpl;

    invoke-static {p2}, Lcom/tencent/imsdk/v2/V2TIMManagerImpl;->access$400(Lcom/tencent/imsdk/v2/V2TIMManagerImpl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMGroupListener;

    .line 4
    invoke-virtual {v1, p1, v0}, Lcom/tencent/imsdk/v2/V2TIMGroupListener;->onTopicInfoChanged(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMTopicInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
