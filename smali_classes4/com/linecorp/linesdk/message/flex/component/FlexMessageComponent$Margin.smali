.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum NONE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

.field public static final enum XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->NONE:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 2
    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v3, "XS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->XS:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 3
    new-instance v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v5, "SM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 4
    new-instance v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v7, "MD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 5
    new-instance v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v9, "LG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->LG:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 6
    new-instance v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v11, "XL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->XL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    .line 7
    new-instance v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const-string v13, "XXL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->XXL:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Margin;

    return-object v0
.end method
