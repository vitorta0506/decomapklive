.class public final enum Lorg/light/Config$ConfigKeys;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/Config$ConfigKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/Config$ConfigKeys;

.field public static final enum ResourceDir:Lorg/light/Config$ConfigKeys;


# instance fields
.field public val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/light/Config$ConfigKeys;

    const-string v1, "ResourceDir"

    const/4 v2, 0x0

    const-string v3, "resource_dir"

    invoke-direct {v0, v1, v2, v3}, Lorg/light/Config$ConfigKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/light/Config$ConfigKeys;->ResourceDir:Lorg/light/Config$ConfigKeys;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/light/Config$ConfigKeys;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lorg/light/Config$ConfigKeys;->$VALUES:[Lorg/light/Config$ConfigKeys;

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
    iput-object p3, p0, Lorg/light/Config$ConfigKeys;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/Config$ConfigKeys;
    .locals 1

    const-class v0, Lorg/light/Config$ConfigKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/Config$ConfigKeys;

    return-object p0
.end method

.method public static values()[Lorg/light/Config$ConfigKeys;
    .locals 1

    sget-object v0, Lorg/light/Config$ConfigKeys;->$VALUES:[Lorg/light/Config$ConfigKeys;

    invoke-virtual {v0}, [Lorg/light/Config$ConfigKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/Config$ConfigKeys;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/Config$ConfigKeys;->val:Ljava/lang/String;

    return-object v0
.end method
