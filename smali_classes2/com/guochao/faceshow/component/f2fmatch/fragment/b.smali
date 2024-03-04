.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/fragment/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

.field public final synthetic b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;->a:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;->a:Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/fragment/b;->b:Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;->T1(Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fChatMessageFragment;Lcom/guochao/faceshow/component/f2fmatch/model/F2fChatMessageModel;Ljava/util/List;)V

    return-void
.end method
