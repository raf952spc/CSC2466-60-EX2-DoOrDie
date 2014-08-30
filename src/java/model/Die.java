package model;

import java.io.Serializable;
import java.util.Random;

/**
 * Simulation of a "small [cube] of plastic, ivory, bone, or wood, marked on 
 * each side with one to six spots"
 * 
 * @author rfoy
 */
public class Die implements Serializable  {
    private static final int NUM_SIDES = 6;
    private static final long SEED = 201408210000L;
    private static final Random rand = new Random(SEED);
    
    private int faceValue;

    /**
     * no-argument constructor.
     * face value will be set to random side
     */
    public Die() {
        roll();
    }
    
    /**
     * Returns the number of sides of this die
     * @return number of sides on this die
     */
    public int getNumSides(){
        return NUM_SIDES;
    }
    
    /**
     * changes the "face" of the die randomly
     */
    public final void roll(){
        faceValue = rand.nextInt(NUM_SIDES) + 1;
    }
    
    /**
     * Gets a number representing the number of "spots" on the facing side.
     * @return number of spots
     */
    public int getFaceValue(){
        return faceValue;
    }
}
