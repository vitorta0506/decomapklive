.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/d;

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    check-cast p2, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->e(Lcom/guochao/faceshow/aaspring/db/GroupInfo;Lcom/guochao/faceshow/aaspring/db/GroupInfo;)I

    move-result p1

    return p1
.end method
