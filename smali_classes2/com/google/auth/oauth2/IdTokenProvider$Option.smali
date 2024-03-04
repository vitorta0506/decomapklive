.class public final enum Lcom/google/auth/oauth2/IdTokenProvider$Option;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/IdTokenProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auth/oauth2/IdTokenProvider$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/auth/oauth2/IdTokenProvider$Option;

.field public static final enum FORMAT_FULL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

.field public static final enum INCLUDE_EMAIL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

.field public static final enum LICENSES_TRUE:Lcom/google/auth/oauth2/IdTokenProvider$Option;


# instance fields
.field private option:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/IdTokenProvider$Option;

    const-string v1, "FORMAT_FULL"

    const/4 v2, 0x0

    const-string v3, "formatFull"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/auth/oauth2/IdTokenProvider$Option;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/auth/oauth2/IdTokenProvider$Option;->FORMAT_FULL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    .line 2
    new-instance v1, Lcom/google/auth/oauth2/IdTokenProvider$Option;

    const-string v3, "LICENSES_TRUE"

    const/4 v4, 0x1

    const-string v5, "licensesTrue"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/auth/oauth2/IdTokenProvider$Option;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/auth/oauth2/IdTokenProvider$Option;->LICENSES_TRUE:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    .line 3
    new-instance v3, Lcom/google/auth/oauth2/IdTokenProvider$Option;

    const-string v5, "INCLUDE_EMAIL"

    const/4 v6, 0x2

    const-string v7, "includeEmail"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/auth/oauth2/IdTokenProvider$Option;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/auth/oauth2/IdTokenProvider$Option;->INCLUDE_EMAIL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/auth/oauth2/IdTokenProvider$Option;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/auth/oauth2/IdTokenProvider$Option;->$VALUES:[Lcom/google/auth/oauth2/IdTokenProvider$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/google/auth/oauth2/IdTokenProvider$Option;->option:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auth/oauth2/IdTokenProvider$Option;
    .locals 1

    const-class v0, Lcom/google/auth/oauth2/IdTokenProvider$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/auth/oauth2/IdTokenProvider$Option;

    return-object p0
.end method

.method public static values()[Lcom/google/auth/oauth2/IdTokenProvider$Option;
    .locals 1

    sget-object v0, Lcom/google/auth/oauth2/IdTokenProvider$Option;->$VALUES:[Lcom/google/auth/oauth2/IdTokenProvider$Option;

    invoke-virtual {v0}, [Lcom/google/auth/oauth2/IdTokenProvider$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/auth/oauth2/IdTokenProvider$Option;

    return-object v0
.end method


# virtual methods
.method public getOption()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdTokenProvider$Option;->option:Ljava/lang/String;

    return-object v0
.end method
