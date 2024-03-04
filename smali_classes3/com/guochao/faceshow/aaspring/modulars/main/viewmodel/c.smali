.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->b(Lcom/guochao/faceshow/aaspring/db/FriendInfo;Lcom/guochao/faceshow/aaspring/db/FriendInfo;)I

    move-result p1

    return p1
.end method
