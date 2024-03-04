.class public abstract Lcom/guochao/faceshow/aaspring/manager/im/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d;
.implements Lb8/d$a;
.implements Lcom/guochao/faceshow/aaspring/manager/i$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/im/a$g;,
        Lcom/guochao/faceshow/aaspring/manager/im/a$f;
    }
.end annotation


# instance fields
.field a:Landroid/app/Application;

.field b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "La8/a;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/a$g;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMCallback;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field protected o:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/b$n;",
            ">;"
        }
    .end annotation
.end field

.field p:Z

.field protected q:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->e:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->g:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->h:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    .line 12
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 14
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/manager/im/a;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->l:I

    return p1
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->n:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;->release()V

    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->n:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/d;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->navToChat(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->n:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public E(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public I(Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected g()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getMyNoDisturb()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v6

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v5, v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSilent(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSilent(I)V

    goto :goto_0

    :cond_2
    const-string v1, "24HourMessage"

    const-string v4, "\u8bbe\u7f6e\u6570\u636e"

    .line 8
    invoke-static {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, La8/a;

    invoke-direct {v4, v3, v0}, La8/a;-><init>(ZLjava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->l(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callListeners: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMManager"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    .line 15
    invoke-interface {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/d;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v3

    invoke-interface {p0, v3, v1}, Lcom/guochao/faceshow/aaspring/manager/im/d;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    .line 16
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v6

    invoke-interface {v6}, Lb8/d;->c()Lb8/a;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "otherLanguage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "userId"

    .line 19
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "type"

    .line 20
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 21
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 23
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->m:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->n:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method protected i(Lcom/tencent/imsdk/v2/V2TIMMessage;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method protected j()V
    .locals 4

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/im/a$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$e;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    const-string v3, "setOfflinePushState"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->callExperimentalAPI(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x5373a5c4

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    .line 3
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMSDKConfig;->setLogLevel(I)V

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/im/a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMManager;->initSDK(Landroid/content/Context;ILcom/tencent/imsdk/v2/V2TIMSDKConfig;Lcom/tencent/imsdk/v2/V2TIMSDKListener;)Z

    .line 7
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/manager/im/a$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$b;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->setConversationListener(Lcom/tencent/imsdk/v2/V2TIMConversationListener;)V

    .line 8
    new-instance p1, Lcom/guochao/faceshow/aaspring/manager/im/a$f;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$f;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->addAdvancedMsgListener(Lcom/tencent/imsdk/v2/V2TIMAdvancedMsgListener;)V

    .line 10
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->registerOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->init()V

    .line 13
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/manager/im/a$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$c;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMManager;->setGroupListener(Lcom/tencent/imsdk/v2/V2TIMGroupListener;)V

    .line 14
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getFriendshipManager()Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/manager/im/a$d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a$d;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/a;)V

    invoke-virtual {p1, p2}, Lcom/tencent/imsdk/v2/V2TIMFriendshipManager;->setFriendListener(Lcom/tencent/imsdk/v2/V2TIMFriendshipListener;)V

    return-void
.end method

.method protected l(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conversation"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginUser()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginStatus()I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected n()Z
    .locals 1

    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "La8/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public abstract q(Lcom/tencent/imsdk/v2/V2TIMMessage;ZLjava/lang/String;)V
.end method

.method public registerGroupDismissListener(Lcom/guochao/faceshow/aaspring/manager/im/a$g;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/im/d$a;

    .line 2
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$a;->onRecvMessageRevoked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterGroupDismissListener(Lcom/guochao/faceshow/aaspring/manager/im/a$g;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract v(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public w(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public z(Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
