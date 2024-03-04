.class public Lcom/guochao/faceshow/bean/MusicTypeList$Page;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/MusicTypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/bean/MusicType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/bean/MusicTypeList;

.field public totalPage:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/bean/MusicTypeList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/MusicTypeList$Page;->this$0:Lcom/guochao/faceshow/bean/MusicTypeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
