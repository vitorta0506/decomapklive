.class public final enum Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

.field public static final enum MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

.field public static final enum SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    const-string v1, "SM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;->SM:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    .line 2
    new-instance v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    const-string v3, "MD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;->MD:Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

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

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;->$VALUES:[Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/message/flex/component/FlexMessageComponent$Height;

    return-object v0
.end method
