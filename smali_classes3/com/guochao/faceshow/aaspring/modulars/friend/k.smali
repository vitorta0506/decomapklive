.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/friend/k;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/k;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/friend/k;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->d0(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
