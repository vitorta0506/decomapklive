.class public final enum Lorg/apache/http/client/utils/URIUtils$UriFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/client/utils/URIUtils$UriFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/client/utils/URIUtils$UriFlag;

.field public static final enum DROP_FRAGMENT:Lorg/apache/http/client/utils/URIUtils$UriFlag;

.field public static final enum NORMALIZE:Lorg/apache/http/client/utils/URIUtils$UriFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/http/client/utils/URIUtils$UriFlag;

    const-string v1, "DROP_FRAGMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/utils/URIUtils$UriFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/client/utils/URIUtils$UriFlag;->DROP_FRAGMENT:Lorg/apache/http/client/utils/URIUtils$UriFlag;

    .line 2
    new-instance v1, Lorg/apache/http/client/utils/URIUtils$UriFlag;

    const-string v3, "NORMALIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/http/client/utils/URIUtils$UriFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/client/utils/URIUtils$UriFlag;->NORMALIZE:Lorg/apache/http/client/utils/URIUtils$UriFlag;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/client/utils/URIUtils$UriFlag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/apache/http/client/utils/URIUtils$UriFlag;->$VALUES:[Lorg/apache/http/client/utils/URIUtils$UriFlag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/client/utils/URIUtils$UriFlag;
    .locals 1

    const-class v0, Lorg/apache/http/client/utils/URIUtils$UriFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/client/utils/URIUtils$UriFlag;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/client/utils/URIUtils$UriFlag;
    .locals 1

    sget-object v0, Lorg/apache/http/client/utils/URIUtils$UriFlag;->$VALUES:[Lorg/apache/http/client/utils/URIUtils$UriFlag;

    invoke-virtual {v0}, [Lorg/apache/http/client/utils/URIUtils$UriFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/client/utils/URIUtils$UriFlag;

    return-object v0
.end method
