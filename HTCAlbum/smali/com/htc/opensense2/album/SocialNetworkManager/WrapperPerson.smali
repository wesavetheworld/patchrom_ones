.class public Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
.super Ljava/lang/Object;
.source "WrapperPerson.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyBaseData;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAvatar:Ljava/lang/String;

.field private mHandlerData:Landroid/os/Handler;

.field private mID:Ljava/lang/String;

.field private mIsProfileUpdated:Z

.field private mIsVisible:I

.field private mName:Ljava/lang/String;

.field private mNameResource:I

.field private mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->LOG_TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson$1;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 232
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->readFromParcel(Landroid/os/Parcel;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 64
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V
    .locals 2
    .parameter "person"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 69
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 81
    iget-object v0, p1, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V
    .locals 4
    .parameter "aPerson"
    .parameter "hDataHandler"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    iput-boolean v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 88
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 94
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 98
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 99
    return-void

    .line 96
    :cond_1
    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "personOp"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setProfile(Lcom/htc/opensense/social/data/Person;)V

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V
    .locals 2
    .parameter "szAccount"
    .parameter "profile"
    .parameter "hDataHandler"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 39
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 46
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsProfileUpdated:Z

    .line 73
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 74
    iget-object v0, p2, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 76
    invoke-virtual {p2}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 78
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarDefault()I
    .locals 1

    .prologue
    .line 180
    const v0, 0x20800d1

    return v0
.end method

.method public getBuddyIconURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameByResource()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    return v0
.end method

.method public getProfile()Lcom/htc/opensense/social/data/Person;
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, profile:Lcom/htc/opensense/social/data/Person;
    new-instance v0, Lcom/htc/opensense/social/data/Person;

    .end local v0           #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/opensense/social/data/Person;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v0       #profile:Lcom/htc/opensense/social/data/Person;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Person;->setFullname(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/social/data/Person;->setLargeBuddyIconUrl(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method public getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    return-object v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 243
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mHandlerData:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method public setNameByResource(I)V
    .locals 0
    .parameter "nResid"

    .prologue
    .line 184
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mNameResource:I

    .line 185
    return-void
.end method

.method public setProfile(Lcom/htc/opensense/social/data/Person;)V
    .locals 1
    .parameter "profile"

    .prologue
    .line 102
    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getFullname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getDisplay_name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getLargeBuddyIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/social/data/Profile;->getUser_avatar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 138
    :cond_2
    return-void
.end method

.method public setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    .locals 0
    .parameter "separatorTag"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 193
    return-void
.end method

.method public toggleVisibility()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 151
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    .line 155
    :goto_0
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 156
    return-void

    .line 153
    :cond_0
    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    return-void
.end method