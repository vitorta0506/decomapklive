.class public final enum Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field public static final enum DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field public static final enum IE_MEDIUM_SECURITY:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    .line 2
    new-instance v1, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const-string v3, "IE_MEDIUM_SECURITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->$VALUES:[Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .locals 1

    const-class v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    .locals 1

    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->$VALUES:[Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    invoke-virtual {v0}, [Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    return-object v0
.end method
