.class public final enum Lcom/snapchat/kit/sdk/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/snapchat/kit/sdk/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/kit/sdk/a/a$a;

.field public static final enum FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

.field public static final enum GRANT:Lcom/snapchat/kit/sdk/a/a$a;

.field public static final enum REFRESH:Lcom/snapchat/kit/sdk/a/a$a;

.field public static final enum REVOKE:Lcom/snapchat/kit/sdk/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/a/a$a;

    const-string v1, "REVOKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/snapchat/kit/sdk/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/kit/sdk/a/a$a;->REVOKE:Lcom/snapchat/kit/sdk/a/a$a;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/a/a$a;

    const-string v3, "REFRESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/snapchat/kit/sdk/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/snapchat/kit/sdk/a/a$a;->REFRESH:Lcom/snapchat/kit/sdk/a/a$a;

    .line 3
    new-instance v3, Lcom/snapchat/kit/sdk/a/a$a;

    const-string v5, "GRANT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/snapchat/kit/sdk/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/snapchat/kit/sdk/a/a$a;->GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    .line 4
    new-instance v5, Lcom/snapchat/kit/sdk/a/a$a;

    const-string v7, "FIREBASE_TOKEN_GRANT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/snapchat/kit/sdk/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/snapchat/kit/sdk/a/a$a;->FIREBASE_TOKEN_GRANT:Lcom/snapchat/kit/sdk/a/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/snapchat/kit/sdk/a/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/snapchat/kit/sdk/a/a$a;->$VALUES:[Lcom/snapchat/kit/sdk/a/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/kit/sdk/a/a$a;
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/snapchat/kit/sdk/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/snapchat/kit/sdk/a/a$a;
    .locals 1

    sget-object v0, Lcom/snapchat/kit/sdk/a/a$a;->$VALUES:[Lcom/snapchat/kit/sdk/a/a$a;

    invoke-virtual {v0}, [Lcom/snapchat/kit/sdk/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/kit/sdk/a/a$a;

    return-object v0
.end method
