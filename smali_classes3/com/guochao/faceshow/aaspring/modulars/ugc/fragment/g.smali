.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/g;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/g;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/HotDynamicListFragment$TopicAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V

    return-void
.end method
