.class final enum Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/IdentityPoolCredentials$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

.field public static final enum b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

.field private static final synthetic c:[Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    .line 2
    new-instance v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    const-string v3, "JSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->c:[Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;
    .locals 1

    const-class v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    return-object p0
.end method

.method public static values()[Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;
    .locals 1

    sget-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->c:[Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    invoke-virtual {v0}, [Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    return-object v0
.end method
