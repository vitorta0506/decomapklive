.class public final enum Lcom/guochao/faceshow/views/SwipeListLayout$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/SwipeListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/guochao/faceshow/views/SwipeListLayout$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/guochao/faceshow/views/SwipeListLayout$Status;

.field public static final enum Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

.field public static final enum Open:Lcom/guochao/faceshow/views/SwipeListLayout$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const-string v1, "Open"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/SwipeListLayout$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Open:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    new-instance v1, Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const-string v3, "Close"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/views/SwipeListLayout$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->$VALUES:[Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/guochao/faceshow/views/SwipeListLayout$Status;
    .locals 1

    const-class v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    return-object p0
.end method

.method public static values()[Lcom/guochao/faceshow/views/SwipeListLayout$Status;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->$VALUES:[Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    invoke-virtual {v0}, [Lcom/guochao/faceshow/views/SwipeListLayout$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    return-object v0
.end method
